proc iml;w={ 0.1, 0.3, 0.6};   
mu= {-6,   3,   8};   
sigma={0.5,  0.6, 2.5};      
do t=1 to 100;    
call randgen(u, "Uniform", 1, 4);    
i=floor(u);   
x=x//normal(0)*sigma[i]+mu[i];    
end;    
call histogram(x); **c'est optionnel;

/* 3lois qui s'imbriquent 
tirer des chiffres entre 1 et 3
floor : prend juste le chiffre de l'unité 
génération d'une loi normale de 0 * sigma(i) + mu 
si je fais ça plein de fois, j'ai 3 lois normales imbriquées
faire un histogramme 

Ne pas oublier de mettre des moments négatifs pour avoir des valeurs extrêmes des 2 côtés
Lars et Lasso ne marchent plus en théorie
Alternatives de loi pour obtenir des valeurs extrêmes : chi2, bêta
*/


