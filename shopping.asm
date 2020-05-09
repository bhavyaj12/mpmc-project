.DATA
M1 DB 10,13,'Welcome to Amazon! $',10,13 
M2 DB 10,13,10,13,'Press 1 to start shopping $'

               
M8 DB 10,13,10,13,'Choose from our following items on sale and get amazing discounts $'
  
;List of Items  
M9  DB 10,13,'1.Black Slim Pants (MRP=145)$' 
M10 DB 10,13,'2.Beige Crop Top (MRP=149)$'
M11 DB 10,13,'3.Denim Shorts (MRP=170)$'
M12 DB 10,13,'4.Formal Shoes (MRP=151)$'
M13 DB 10,13,'5.White formal shirt (MRP=135)$'
M14 DB 10,13,'6.Red Socks (MRP=70) $'
M15 DB 10,13,'7.YMCA Cap (MRP=80) $'
M16 DB 10,13,'8.Zebra Printed Tshirt (MRP=178) $'
M17 DB 10,13,'9.Brown Blazer (MRP=180) $' 

M57 DB 10,13,10,13,'Enter your shopping item: $'
M58 DB 10,13,10,13,'Congrats! You have got a discount of: $'
M59 DB 10,13,'Total Price after discount: $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
  
    LEA DX,M1
    MOV AH,9
    INT 21H
                                                   
    LEA DX,M2
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE Billing

       
  Billing:
    
    
    LEA DX,M8    
    MOV AH,9
    INT 21H
    
    LEA DX,M9    ;1
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M10   ;2
    MOV AH,9
    INT 21H
    
    LEA DX,M11
    MOV AH,9     ;3
    INT 21H 
    
    LEA DX,M12
    MOV AH,9     ;4
    INT 21H
    
    
    LEA DX,M13   ;5
    MOV AH,9
    INT 21H
    
    
    LEA DX,M14   ;6
    MOV AH,9
    INT 21H
            
    
    LEA DX,M15
    MOV AH,9     ;7
    INT 21H
            
            
    LEA DX,M16   ;8
    MOV AH,9
    INT 21H 
    
    LEA DX,M17   ;9
    MOV AH,9
    INT 21H
    
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE  item1
    
    CMP BL,2
    JE item2
    
    CMP BL,3
    JE item3
    
    CMP BL,4
    JE item4
    
    CMP BL,5
    JE item5
    
    CMP BL,6
    JE item6
    
    CMP BL,7
    JE item7
    
    CMP BL,8
    JE item8 
    
    CMP BL,9
    JE item9 
    
    item1: 
    MOV BL,1
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    MOV AX,50 
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    MOV BL,1
    LEA DX,M59              
    MOV AH,9
    INT 21H
    MOV AX,95
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H   
    JMP EXIT
    
    item2:
    MOV BL,1
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    MOV AX,60
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    MOV BL,1
    LEA DX,M59              
    MOV AH,9
    INT 21H
    MOV AX,89
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H 
    JMP EXIT
    
    item3:
    MOV BL,1
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    MOV AX,86
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    MOV BL,1
    LEA DX,M59              
    MOV AH,9
    INT 21H
    MOV AX,84
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    JMP EXIT
    
    item4:
    MOV BL,1
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    MOV AX,68
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    MOV BL,1
    LEA DX,M59              
    MOV AH,9
    INT 21H
    MOV AX,83
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    JMP EXIT 
    
    item5:
    MOV BL,1
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    MOV AX,43
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    MOV BL,1
    LEA DX,M59              
    MOV AH,9
    INT 21H
    MOV AX,92
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    JMP EXIT
    
    item6:
    MOV BL,1
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    MOV AX,10
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    MOV BL,1
    LEA DX,M59              
    MOV AH,9
    INT 21H
    MOV AX,60
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H 
    JMP EXIT
    
    item7:
    MOV BL,1
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    MOV AX,10
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    MOV BL,1
    LEA DX,M59              
    MOV AH,9
    INT 21H
    MOV AX,70
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H 
    JMP EXIT 
    
    item8:
    MOV BL,1
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    MOV AX,95
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    MOV BL,1
    LEA DX,M59              
    MOV AH,9
    INT 21H
    MOV AX,83
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    JMP EXIT
    
    item9:
    MOV BL,1
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    MOV AX,81
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    MOV BL,1
    LEA DX,M59              
    MOV AH,9
    INT 21H
    MOV AX,99
    AAM 
    MOV CX,AX
    ADD CL,48 
    ADD CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    MOV DL,CL
    INT 21H
    JMP EXIT
    
    EXIT:
    MAIN ENDP
END MAIN
    
    
     
      
    
    
    