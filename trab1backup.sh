#!/bin/bash

   file=$1

   num=$( cat "$file" | wc -l )   

   if [[ $num -lt 100 ]];
   then
      
      mkdir pequena
      mv $file /home/ubuntu/Trabalho1-AV2/pequena

   elif [[ $num -ge 100 ]] && [[ $num -lt 500 ]]
   then
      
      mkdir media
      mv $file /home/ubuntu/Trabalho1-AV2/media

   else

      mkdir grande
      mv $file /home/ubuntu/Trabalho1-AV2/grande

   fi

echo -e "\nO arquivo $teste tem $num linhas e foi movido para a pasta correta com sucesso!\n"
