# Multilingual Medicine: Model, Dataset, Benchmark, Code

Covering English, Chinese, French, Hindi, Spanish, Hindi, Arabic So far
<center>

![Python 3.10](https://img.shields.io/badge/Python-3.10-lightblue) ![Pytorch 2.1.2](https://img.shields.io/badge/PyTorch-2.1.2-lightblue) ![transformers](https://img.shields.io/badge/transformers-4.34.0.dev0%2B-lightblue) ![accelerate](https://img.shields.io/badge/accelerate-0.22-lightblue)
</center>



<p align="center">
   📃 <a href="" target="_blank">Paper</a> • 🌐 <a href="https://apollo.llmzoo.com/" target="_blank">Demo</a> • 🤗 <a href="https://huggingface.co/datasets/FreedomIntelligence/ApolloCorpus" target="_blank">ApolloCorpus</a> • 🤗 <a href="https://huggingface.co/datasets/FreedomIntelligence/XMedbench" target="_blank">XMedBench</a> 
   <br>  <a href="./README_zh.md"> 中文 </a> | <a href="./README.md"> English
</p>

![Apollo](assets/apollo_medium_final.png)

## 🌈 Update

* **[2024.02.12]** <a href="https://huggingface.co/datasets/FreedomIntelligence/ApolloCorpus" target="_blank">ApolloCorpus</a> and  <a href="https://huggingface.co/datasets/FreedomIntelligence/XMedbench" target="_blank">XMedBench</a>  is published！🎉
* **[2024.01.23]** Apollo repo is published！🎉


## Results
   🤗 <a href="https://huggingface.co/FreedomIntelligence/Apollo-0.5B" target="_blank">Apollo-0.5B</a> • 🤗 <a href="https://huggingface.co/FreedomIntelligence/Apollo-1.8B" target="_blank">Apollo-1.8B</a> • 🤗 <a href="https://huggingface.co/FreedomIntelligence/Apollo-2B" target="_blank">Apollo-2B</a>  • 🤗 <a href="https://huggingface.co/FreedomIntelligence/Apollo-6B" target="_blank">Apollo-6B</a> • 🤗 <a href="https://huggingface.co/FreedomIntelligence/Apollo-7B" target="_blank">Apollo-7B</a> 
   
   <details><summary>Click to expand</summary>
   
   ![Apollo](assets/result.png)
      
   
   </details>
  


## Dataset & Evaluation

- Dataset
  🤗 <a href="https://huggingface.co/datasets/FreedomIntelligence/ApolloCorpus" target="_blank">ApolloCorpus
   
- Evaluation
  🤗 <a href="https://huggingface.co/datasets/FreedomIntelligence/XMedbench" target="_blank">XMedBench</a> 

   <details><summary>Click to expand</summary>
      
     - EN:
       - [MedQA-USMLE](https://huggingface.co/datasets/GBaker/MedQA-USMLE-4-options) 
       - [MedMCQA](https://huggingface.co/datasets/medmcqa/viewer/default/test)
       - [PubMedQA](https://huggingface.co/datasets/pubmed_qa): Because the results fluctuated too much, they were not used in the paper.
       - [MMLU-Medical](https://huggingface.co/datasets/cais/mmlu)
         - Clinical knowledge, Medical genetics, Anatomy, Professional medicine, College biology, College medicine
     - ZH:
       - [MedQA-MCMLE](https://huggingface.co/datasets/bigbio/med_qa/viewer/med_qa_zh_4options_bigbio_qa/test)
       - [CMB-single](https://huggingface.co/datasets/FreedomIntelligence/CMB): Not used in the paper
         - Randomly sample 2,000 multiple-choice questions with single answer.
       - [CMMLU-Medical](https://huggingface.co/datasets/haonan-li/cmmlu)
         - Anatomy, Clinical_knowledge, College_medicine, Genetics, Nutrition, Traditional_chinese_medicine, Virology
       - [CExam](https://github.com/williamliujl/CMExam): Not used in the paper
         - Randomly sample 2,000 multiple-choice questions


     - ES: [Head_qa](https://huggingface.co/datasets/head_qa)
     - FR: [Frenchmedmcqa](https://github.com/qanastek/FrenchMedMCQA)
     - HI: [MMLU_HI](https://huggingface.co/datasets/FreedomIntelligence/MMLU_Arabic)
        - Clinical knowledge, Medical genetics, Anatomy, Professional medicine, College biology, College medicine
     - AR: [MMLU_Ara](https://huggingface.co/datasets/FreedomIntelligence/MMLU_Hindi)
        - Clinical knowledge, Medical genetics, Anatomy, Professional medicine, College biology, College medicine


   </details>

   
## Results reproduction
   <details><summary>Click to expand</summary>
   
   **Waiting for Update**
      

   
   </details>



##  Acknowledgment

- [HuatuoGPT-II](https://github.com/FreedomIntelligence/HuatuoGPT-II)
- [proxy-tuning](https://github.com/alisawuffles/proxy-tuning)

##  Citation
Please use the following citation if you intend to use our dataset for training or evaluation:

```
@misc{wang2024apollo,
   title={Apollo: Lightweight Multilingual Medical LLMs towards Democratizing Medical AI to 6B People},
   author={Xidong Wang and Nuo Chen and Junyin Chen and Yan Hu and Yidong Wang and Xiangbo Wu and Anningzhe Gao and Xiang Wan and Haizhou Li and Benyou Wang},
   year={2024},
   eprint={2403.03640},
   archivePrefix={arXiv},
   primaryClass={cs.CL}
}

@misc{Apollo,
  title={Apollo, Multilingual Medicine: Model, Dataset, Benchmark, Code},
  author={Xidong Wang, Junyin Chen, Nuo Chen, Yidong Wang, Zhiyi Zhang, Benyou Wang},
  year = {2024},
  publisher = {GitHub},
  journal = {GitHub repository},
  howpublished = {\url{https://github.com/FreedomIntelligence/Apollo}},
}
```
