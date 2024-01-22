#!/bin/bash
#SBATCH -J med_base_1
#SBATCH -p p-A100
#SBATCH -A r20240111164947
#SBATCH --nodes=1
#SBATCH --gres=gpu:8 # 需要使用多少GPU，n是需要的数量\
#SBATCH --cpus-per-gpu 8
#SBATCH --reservation=root_114
#SBATCH -t 5-00:00:00 # 运行总时间，天数-小时数-分钟， D-HH:MM
#SBATCH -o med_base_1.o # 把输出结果STDOUT保存在哪一个文件
#SBATCH -e med_base_1.e # 把报错结果STDERR保存在哪一个文件
#SBATCH --mail-type=ALL

cd /mntcephfs/data/med/xidong
source /mntnfs/med_data5/wangxidong/wangxidong/anaconda3/bin/activate
conda activate /mntnfs/med_data5/wangxidong/wangxidong/anaconda3/envs/tiny

module unload cuda11.6/toolkit/11.6.1
module load cuda11.8/toolkit/11.8.0
module unload gcc6/6.5.0
module load gcc/11.2.0


export XDG_RUNTIME_DIR=""
node=$(hostname -s)
user=$(whoami)
submit_host=${SLURM_SUBMIT_HOST}
port=8804

echo $node pinned to port $port
# print tunneling instructions jupyter-log

echo -e "
To connect to the compute node ${node} on sribd running your jupyter notebook server,
you need to run following two commands in a terminal
1. Command to create ssh tunnel from you workstation/laptop to cs-login:
ssh -N -f -L ${port}:${node}:${port} ${user}@10.26.6.81
Copy the link provided below by jupyter-server and replace the NODENAME with localhost before pasting it in your browser on your workstation/laptop
"

# Run Jupyter
jupyter server list
jupyter lab --no-browser --port=${port}  --ip=${node}