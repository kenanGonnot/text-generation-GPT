Trois étapes :
1. Initial 
  * Entrainement bcp epochs 0-3700
  * pc RTX 4080 (local)
  * Data 300Mo =/= tokenizer character 3Mo - Books
  * Le modèle ne s'améliorait plus 
2. Optimisation hyperparametres
  * VAST.AI - RTX A6000 / RTX4090
  * Batch-size 64 -> 128 
  * smaller LR 
  * Plafonnement d'amélioration
3. Nouveau data - _echec_
  * VAST.AI - RTX4090
  * 400 Mo -> 4.7 Go (AFP + wiki + books)
  * Cleaning 
    * Divergence 
    * incorrect 
4. Optimisation cleaning 

![losses.png](img%2Flosses.png)