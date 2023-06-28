# Text Generation - Transformer-decoders GPT 

**Multi-Model Transformer-Decoder Training**

## Description

This project focuses on `text generation` using various Transformer-Decoders models. The goal is to explore different approaches for generating coherent and contextually relevant text. 

The project utilizes three different models, including a **character-level tokenizer model** and **two models that utilize [<u>TikToken</u>](https://github.com/openai/tiktoken) tokenizer**.

Text generation is an exciting area of Natural Language Processing (NLP) and has a wide range of applications, such as chatbots, language translation, and creative writing assistance. By experimenting with different models, this project aims to showcase the capabilities and differences between character-level tokenization and TikToken tokenization in text generation tasks.

# Table of Contents
<!--ts-->
   * [Description](#Description)
   * [Technical information](#Technical-information)
   * [Models](#models)
       * [Character-Level Tokenizer Model](#Character-Level-Tokenizer-Model)
       * [TikToken Tokenizer Models](#TikToken-Tokenizer-Models)
   * [Demo](#demo)
   * [Contributing](#Contributing)
   * [Contact](#contact)
<!--te-->

## Technical information 
To train the Character-Level Tokenizer Model, the following technical setup was used:

* **Machine:** NVIDIA RTX 4080, RTX 4090 and RTX A6000.
* **ML Frameworks:** PyTorch
* **ML models:** We used the model from [here](https://github.com/karpathy/ng-video-lecture), by [Andrej
karpathy](https://github.com/karpathy)
* **Cloud:** [cloud.vast.ai](https://vast.ai)
* **TikToken:** We used the "GPT-2" dictionary. [GitHub](https://github.com/openai/tiktoken)
* **Datasets:** Multiple French datasets (10 GB) including novels (~15%), Wikipedia(~15%), and AFP news (~70%)

## Models

### Character-Level Tokenizer Model
* [Here](./tokenizer-character)

The character-level tokenizer model uses a basic approach of treating each character as a token. It takes advantage of the Transformer-Decoder architecture to generate text based on the patterns it learns from the training data. This model is suitable for tasks that require fine-grained control over the generated text.



### TikToken Tokenizer Models
* [Here](./tokenizer-tiktoken)

The TikToken tokenizer models leverage the power of TikToken, which provides advanced tokenization techniques specifically designed for NLP tasks. tiktoken is between 3-6x faster than a comparable open source tokeniser

The project includes two TikToken tokenizer models: 
* ### [v1](./tokenizer-tiktoken/training): 
    * **Train Loss:** 2.1450 
    * **Val Loss:** 2.2333

    | Hyperparameters    | Number        |
    |:--------------|-------------|
    | Parameters    | 49M         |
    | Epochs        | 100160      |
    | Batch size    | 64 ~ 128    |
    | Learning rate | 3e-4 ~ 3e-6 |
    | Dropout       | 0.1 ~ 0.3   |
    | Block size    | 128         |
    | n_embedding   | 384         |
    | n_head        | 6           |
    | n_layer       | 6           |

##### Output:
```text
Nous avons l'homme d'une diplomatie et nous avons les moyens nécessaires et nous ne pouvons pas créer de négociation pour soutenir le processus ou d'éventuelles actions", a-t-il poursuivi. 
Davos avait auparavant confirmé la décision de rassurer les Européens à l'occasion de l'élèvement d'un journaliste jordanien de 47 ans, Abou Ismaïl. 
Le Soudan faisait partie d'une puissante guerre intégriste depuis plus de 50 ans en soulignant que les activités nucléaires iraniennes avaient été renforcée puisque les demandes de ce dernier "sont trop promises pour endiguer la prolifération". 
Sept membres de la semaine dernière, Ali Pichehrani, ont participé à une tournure de cinq
```
<br>

* ### [v2](./tokenizer-tiktoken/v2): 
    * **Train Loss:** 1.9051
    * **Val Loss:** 2.0074



    | Hyperparameters    | Number        |
    |:--------------|-------------|
    | Parameters    | 119M        |
    | Parameters    | 255440      |
    | Batch size    | 64 ~ 256    |
    | Learning rate | 3e-4 ~ 3e-6 |
    | Dropout       | 0.1 ~ 0.2   |
    | Block size    | 128         |
    | n_embedding   | 384*2       |
    | n_head        | 6           |
    | n_layer       | 6           |

##### Output:
```text
Sous un soleil, les magasins de fer français débordent d'une multitude de fleurs mais sans encombre, "la France nourrit une résistance passive à plusieurs tirs d'explosifs". 
Règlementaire pour lundi, l'organisation de défense des minorités internes des régions-plomb et galeries souterraines pourrait atteindre Haïti, a estimé mercredi l'Assemblée nationale vénézuélienne. 
"Il n'est pas plus facilement signifiant que l'incident est vraisemblablement responsable d'un affrontement inter-ethnique", a déclaré à l'AFP Mme Jenny Oteola, présidente de la Société nationale des chemins de fer (SNCB), sans préciser les chiffres définitifs du nombre des exploitations pétrolières, propriété du raffinage. 
Les autorités, présentes dans la capitale côtière de l'Algérie, décident mardi d'infliger un moratoire de 48 heures sur le commerce du fleuve, a-t-elle précisé. 
En début de semaine, lors des négociations, les avocats avaient exprimé leur réticence à l'avance sur les demandes des autorités françaises. Mais, quatre jours plus tard, les ministres se sont attelés pour ne pas laisser entendre qu'ils s'opposeront à la fusion globalement celle sur l'atoll de Mururoa. 
De terroristes maghrébins, des paysans et des étrangers,
```
<br>

> All these models are trained from scratch.

## Demo
You can test all the models [here](https://google.com) *not available yet*

## Contributing

Contributions to this project are welcome! If you find any issues or have suggestions for improvement, please open an issue or submit a pull request in the project repository. Your contributions can help enhance the text generation capabilities and make the project even more comprehensive.


## Contact
[me](https://www.linkedin.com/in/kenan-gonnot/)

2023

