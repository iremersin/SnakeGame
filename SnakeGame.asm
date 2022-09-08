
_leftedHeart:

;SnakeGame.c,48 :: 		void leftedHeart(){
;SnakeGame.c,49 :: 		if (t==2 && light==1){Glcd_Image(heart2_image); delay_ms(1500);}
	MOVF        _t+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_leftedHeart2
	MOVF        _light+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_leftedHeart2
L__leftedHeart378:
	MOVLW       _heart2_image+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_heart2_image+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_heart2_image+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_leftedHeart3:
	DECFSZ      R13, 1, 1
	BRA         L_leftedHeart3
	DECFSZ      R12, 1, 1
	BRA         L_leftedHeart3
	DECFSZ      R11, 1, 1
	BRA         L_leftedHeart3
	NOP
L_leftedHeart2:
;SnakeGame.c,50 :: 		if (t==1 && light==1){Glcd_Image(heart1_image); delay_ms(1500);}
	MOVF        _t+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_leftedHeart6
	MOVF        _light+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_leftedHeart6
L__leftedHeart377:
	MOVLW       _heart1_image+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_heart1_image+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_heart1_image+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_leftedHeart7:
	DECFSZ      R13, 1, 1
	BRA         L_leftedHeart7
	DECFSZ      R12, 1, 1
	BRA         L_leftedHeart7
	DECFSZ      R11, 1, 1
	BRA         L_leftedHeart7
	NOP
L_leftedHeart6:
;SnakeGame.c,51 :: 		if (t==2 && light==2){Glcd_Image(heart2_image_d); delay_ms(1500);}
	MOVF        _t+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_leftedHeart10
	MOVF        _light+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_leftedHeart10
L__leftedHeart376:
	MOVLW       _heart2_image_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_heart2_image_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_heart2_image_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_leftedHeart11:
	DECFSZ      R13, 1, 1
	BRA         L_leftedHeart11
	DECFSZ      R12, 1, 1
	BRA         L_leftedHeart11
	DECFSZ      R11, 1, 1
	BRA         L_leftedHeart11
	NOP
L_leftedHeart10:
;SnakeGame.c,52 :: 		if (t==1 && light==2){Glcd_Image(heart1_image_d); delay_ms(1500);}
	MOVF        _t+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_leftedHeart14
	MOVF        _light+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_leftedHeart14
L__leftedHeart375:
	MOVLW       _heart1_image_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_heart1_image_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_heart1_image_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_leftedHeart15:
	DECFSZ      R13, 1, 1
	BRA         L_leftedHeart15
	DECFSZ      R12, 1, 1
	BRA         L_leftedHeart15
	DECFSZ      R11, 1, 1
	BRA         L_leftedHeart15
	NOP
L_leftedHeart14:
;SnakeGame.c,53 :: 		snake_length= 7;      // Determine snake_length
	MOVLW       7
	MOVWF       _snake_length+0 
;SnakeGame.c,54 :: 		locX = 1;locY = 12;   // Determine initially  snake location
	MOVLW       1
	MOVWF       _locX+0 
	MOVLW       12
	MOVWF       _locY+0 
;SnakeGame.c,55 :: 		Glcd_Fill(glcd_mode);      // Clears the screen
	MOVF        _glcd_mode+0, 0 
	MOVWF       FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;SnakeGame.c,56 :: 		keep = 2;}
	MOVLW       2
	MOVWF       _keep+0 
L_end_leftedHeart:
	RETURN      0
; end of _leftedHeart

_calculate_heart:

;SnakeGame.c,58 :: 		void calculate_heart(){
;SnakeGame.c,59 :: 		if(po==0){Glcd_Fill(glcd_mode); po=1;}
	MOVLW       0
	XORWF       _po+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__calculate_heart409
	MOVLW       0
	XORWF       _po+0, 0 
L__calculate_heart409:
	BTFSS       STATUS+0, 2 
	GOTO        L_calculate_heart16
	MOVF        _glcd_mode+0, 0 
	MOVWF       FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
	MOVLW       1
	MOVWF       _po+0 
	MOVLW       0
	MOVWF       _po+1 
L_calculate_heart16:
;SnakeGame.c,60 :: 		if(ingilizce==1){if(t==1){Glcd_Write_Text(heart_text,1,3,line_color);
	MOVF        _ingilizce+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_calculate_heart17
	MOVF        _t+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_calculate_heart18
	MOVF        _heart_text+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _heart_text+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,61 :: 		Glcd_Write_Text(heart1,1,5,line_color);}
	MOVF        _heart1+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _heart1+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
L_calculate_heart18:
;SnakeGame.c,62 :: 		if(t==2){Glcd_Write_Text(heart_text,1,3,line_color);
	MOVF        _t+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_calculate_heart19
	MOVF        _heart_text+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _heart_text+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,63 :: 		Glcd_Write_Text(heart2,1,5,line_color);}
	MOVF        _heart2+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _heart2+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
L_calculate_heart19:
;SnakeGame.c,64 :: 		if(t==3){Glcd_Write_Text(heart_text,1,3,line_color);
	MOVF        _t+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_calculate_heart20
	MOVF        _heart_text+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _heart_text+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,65 :: 		Glcd_Write_Text(heart3,1,5,line_color);}}
	MOVF        _heart3+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _heart3+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
L_calculate_heart20:
L_calculate_heart17:
;SnakeGame.c,66 :: 		if(ingilizce==2){if(t==1){Glcd_Write_Text(heart_text_t,1,3,line_color);
	MOVF        _ingilizce+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_calculate_heart21
	MOVF        _t+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_calculate_heart22
	MOVF        _heart_text_t+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _heart_text_t+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,67 :: 		Glcd_Write_Text(heart1,1,5,line_color);}
	MOVF        _heart1+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _heart1+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
L_calculate_heart22:
;SnakeGame.c,68 :: 		if(t==2){Glcd_Write_Text(heart_text_t,1,3,line_color);
	MOVF        _t+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_calculate_heart23
	MOVF        _heart_text_t+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _heart_text_t+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,69 :: 		Glcd_Write_Text(heart2,1,5,line_color);}
	MOVF        _heart2+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _heart2+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
L_calculate_heart23:
;SnakeGame.c,70 :: 		if(t==3){Glcd_Write_Text(heart_text_t,1,3,line_color);
	MOVF        _t+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_calculate_heart24
	MOVF        _heart_text_t+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _heart_text_t+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,71 :: 		Glcd_Write_Text(heart3,1,5,line_color);}}
	MOVF        _heart3+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _heart3+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
L_calculate_heart24:
L_calculate_heart21:
;SnakeGame.c,73 :: 		}
L_end_calculate_heart:
	RETURN      0
; end of _calculate_heart

_create_location:

;SnakeGame.c,74 :: 		void create_location ()
;SnakeGame.c,76 :: 		Glcd_Dot (food [0], food [1], line_color_inverse);    // Place a dot at x = food[0], y = food[1]
	MOVF        _food+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _food+1, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color_inverse+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,77 :: 		Glcd_Dot (food [0]+1, food [1], line_color_inverse);    // Place a dot at x = food[0], y = food[1]
	MOVF        _food+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _food+1, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color_inverse+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,80 :: 		food [0] = rand () / 264+1 ;
	CALL        _rand+0, 0
	MOVLW       8
	MOVWF       R4 
	MOVLW       1
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDLW       1
	MOVWF       _food+0 
;SnakeGame.c,81 :: 		food [1] = (rand () / 720)+15 ;
	CALL        _rand+0, 0
	MOVLW       208
	MOVWF       R4 
	MOVLW       2
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVLW       15
	ADDWF       R0, 1 
	MOVF        R0, 0 
	MOVWF       _food+1 
;SnakeGame.c,82 :: 		Glcd_Dot (food [0], food [1], line_color);    // Place a dot at x = food[0], y = food[1]
	MOVF        _food+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        R0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,83 :: 		Glcd_Dot (food [0]+1, food [1], line_color);    // Place a dot at x = food[0], y = food[1]
	MOVF        _food+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _food+1, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,85 :: 		}
L_end_create_location:
	RETURN      0
; end of _create_location

_create_bonus:

;SnakeGame.c,87 :: 		void create_bonus ()
;SnakeGame.c,89 :: 		Glcd_Dot (bonus [0], bonus [1], line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
	MOVF        _bonus+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _bonus+1, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color_inverse+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,90 :: 		Glcd_Dot (bonus [0]+1, bonus [1], line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
	MOVF        _bonus+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _bonus+1, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color_inverse+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,91 :: 		Glcd_Dot (bonus [0]+1, bonus [1]+1, line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
	MOVF        _bonus+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _bonus+1, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color_inverse+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,92 :: 		Glcd_Dot (bonus [0], bonus [1]+1, line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
	MOVF        _bonus+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _bonus+1, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color_inverse+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,93 :: 		bonus [0] = rand () / 456+1 ;
	CALL        _rand+0, 0
	MOVLW       200
	MOVWF       R4 
	MOVLW       1
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDLW       1
	MOVWF       _bonus+0 
;SnakeGame.c,94 :: 		bonus [1] = (rand () / 750)+15 ;
	CALL        _rand+0, 0
	MOVLW       238
	MOVWF       R4 
	MOVLW       2
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVLW       15
	ADDWF       R0, 1 
	MOVF        R0, 0 
	MOVWF       _bonus+1 
;SnakeGame.c,95 :: 		Glcd_Dot (bonus [0], bonus [1], line_color);  // Place a dot at x = bonus[0], y = bonus[1]
	MOVF        _bonus+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        R0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,96 :: 		Glcd_Dot (bonus [0]+1, bonus [1], line_color);  // Place a dot at x = bonus[0], y = bonus[1]
	MOVF        _bonus+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _bonus+1, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,97 :: 		Glcd_Dot (bonus [0]+1, bonus [1]+1, line_color);  // Place a dot at x = bonus[0], y = bonus[1]
	MOVF        _bonus+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _bonus+1, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,98 :: 		Glcd_Dot (bonus [0], bonus [1]+1, line_color);  // Place a dot at x = bonus[0], y = bonus[1]
	MOVF        _bonus+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _bonus+1, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,99 :: 		}
L_end_create_bonus:
	RETURN      0
; end of _create_bonus

_create_barrier:

;SnakeGame.c,101 :: 		void create_barrier()
;SnakeGame.c,103 :: 		Glcd_Line(0,42,12,42,line_color);   //Draw a line from (0,42)to (12,42)
	CLRF        FARG_Glcd_Line_x_start+0 
	CLRF        FARG_Glcd_Line_x_start+1 
	MOVLW       42
	MOVWF       FARG_Glcd_Line_y_start+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_y_start+1 
	MOVLW       12
	MOVWF       FARG_Glcd_Line_x_end+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_x_end+1 
	MOVLW       42
	MOVWF       FARG_Glcd_Line_y_end+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_y_end+1 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Line_color+0 
	CALL        _Glcd_Line+0, 0
;SnakeGame.c,104 :: 		Glcd_Line(127,24,115,24,line_color);    //Draw a line from (127,24)to (115,24)
	MOVLW       127
	MOVWF       FARG_Glcd_Line_x_start+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_x_start+1 
	MOVLW       24
	MOVWF       FARG_Glcd_Line_y_start+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_y_start+1 
	MOVLW       115
	MOVWF       FARG_Glcd_Line_x_end+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_x_end+1 
	MOVLW       24
	MOVWF       FARG_Glcd_Line_y_end+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_y_end+1 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Line_color+0 
	CALL        _Glcd_Line+0, 0
;SnakeGame.c,105 :: 		}
L_end_create_barrier:
	RETURN      0
; end of _create_barrier

_create_barrier_2:

;SnakeGame.c,107 :: 		void create_barrier_2()
;SnakeGame.c,109 :: 		Glcd_Line(64,10,64,18,line_color);    //Draw a line from (64,10)to (64,18)
	MOVLW       64
	MOVWF       FARG_Glcd_Line_x_start+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_x_start+1 
	MOVLW       10
	MOVWF       FARG_Glcd_Line_y_start+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_y_start+1 
	MOVLW       64
	MOVWF       FARG_Glcd_Line_x_end+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_x_end+1 
	MOVLW       18
	MOVWF       FARG_Glcd_Line_y_end+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_y_end+1 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Line_color+0 
	CALL        _Glcd_Line+0, 0
;SnakeGame.c,110 :: 		Glcd_Line(64,63,64,55,line_color);    //Draw a line from (64,63)to (64,55)
	MOVLW       64
	MOVWF       FARG_Glcd_Line_x_start+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_x_start+1 
	MOVLW       63
	MOVWF       FARG_Glcd_Line_y_start+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_y_start+1 
	MOVLW       64
	MOVWF       FARG_Glcd_Line_x_end+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_x_end+1 
	MOVLW       55
	MOVWF       FARG_Glcd_Line_y_end+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_y_end+1 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Line_color+0 
	CALL        _Glcd_Line+0, 0
;SnakeGame.c,111 :: 		}
L_end_create_barrier_2:
	RETURN      0
; end of _create_barrier_2

_create_barrier_3:

;SnakeGame.c,113 :: 		void create_barrier_3()
;SnakeGame.c,115 :: 		Glcd_Line(12,42,12,32,line_color);    //Draw a line from (64,10)to (64,18)
	MOVLW       12
	MOVWF       FARG_Glcd_Line_x_start+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_x_start+1 
	MOVLW       42
	MOVWF       FARG_Glcd_Line_y_start+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_y_start+1 
	MOVLW       12
	MOVWF       FARG_Glcd_Line_x_end+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_x_end+1 
	MOVLW       32
	MOVWF       FARG_Glcd_Line_y_end+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_y_end+1 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Line_color+0 
	CALL        _Glcd_Line+0, 0
;SnakeGame.c,116 :: 		Glcd_Line(115,24,115,36,line_color);    //Draw a line from (64,63)to (64,55)
	MOVLW       115
	MOVWF       FARG_Glcd_Line_x_start+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_x_start+1 
	MOVLW       24
	MOVWF       FARG_Glcd_Line_y_start+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_y_start+1 
	MOVLW       115
	MOVWF       FARG_Glcd_Line_x_end+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_x_end+1 
	MOVLW       36
	MOVWF       FARG_Glcd_Line_y_end+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Line_y_end+1 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Line_color+0 
	CALL        _Glcd_Line+0, 0
;SnakeGame.c,117 :: 		}
L_end_create_barrier_3:
	RETURN      0
; end of _create_barrier_3

_gameOverSound:

;SnakeGame.c,119 :: 		void gameOverSound()
;SnakeGame.c,121 :: 		if(PORTC.F3==1 && PORTC.F6==0){
	BTFSS       PORTC+0, 3 
	GOTO        L_gameOverSound27
	BTFSC       PORTC+0, 6 
	GOTO        L_gameOverSound27
L__gameOverSound381:
;SnakeGame.c,122 :: 		Sound_Init(&PORTA, 3);
	MOVLW       PORTA+0
	MOVWF       FARG_Sound_Init_snd_port+0 
	MOVLW       hi_addr(PORTA+0)
	MOVWF       FARG_Sound_Init_snd_port+1 
	MOVLW       3
	MOVWF       FARG_Sound_Init_snd_pin+0 
	CALL        _Sound_Init+0, 0
;SnakeGame.c,123 :: 		Sound_Play(500, 100);     // Frequency = 1046Hz, duration = 100ms
	MOVLW       244
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       100
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,124 :: 		Sound_Play(100, 50);
	MOVLW       100
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       50
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,125 :: 		Sound_Play(500, 100);
	MOVLW       244
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       100
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,126 :: 		Sound_Play(100, 50);}
	MOVLW       100
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       50
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
L_gameOverSound27:
;SnakeGame.c,127 :: 		if (PORTC.F6==1 && PORTC.F3==0) {
	BTFSS       PORTC+0, 6 
	GOTO        L_gameOverSound30
	BTFSC       PORTC+0, 3 
	GOTO        L_gameOverSound30
L__gameOverSound380:
;SnakeGame.c,128 :: 		Sound_Init(&PORTA, 3);
	MOVLW       PORTA+0
	MOVWF       FARG_Sound_Init_snd_port+0 
	MOVLW       hi_addr(PORTA+0)
	MOVWF       FARG_Sound_Init_snd_port+1 
	MOVLW       3
	MOVWF       FARG_Sound_Init_snd_pin+0 
	CALL        _Sound_Init+0, 0
;SnakeGame.c,129 :: 		Sound_Play(1000, 100);     // Frequency = 1046Hz, duration = 100ms
	MOVLW       232
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       3
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       100
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,130 :: 		Sound_Play(500, 50);
	MOVLW       244
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       50
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,131 :: 		Sound_Play(1000, 100);
	MOVLW       232
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       3
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       100
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,132 :: 		Sound_Play(500, 50);}
	MOVLW       244
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       50
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
L_gameOverSound30:
;SnakeGame.c,133 :: 		if (PORTC.F6==1 && PORTC.F3==1) {
	BTFSS       PORTC+0, 6 
	GOTO        L_gameOverSound33
	BTFSS       PORTC+0, 3 
	GOTO        L_gameOverSound33
L__gameOverSound379:
;SnakeGame.c,134 :: 		Sound_Init(&PORTA, 3);
	MOVLW       PORTA+0
	MOVWF       FARG_Sound_Init_snd_port+0 
	MOVLW       hi_addr(PORTA+0)
	MOVWF       FARG_Sound_Init_snd_port+1 
	MOVLW       3
	MOVWF       FARG_Sound_Init_snd_pin+0 
	CALL        _Sound_Init+0, 0
;SnakeGame.c,135 :: 		Sound_Play(500, 100);     // Frequency = 1046Hz, duration = 100ms
	MOVLW       244
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       100
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,136 :: 		Sound_Play(100, 50);
	MOVLW       100
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       50
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,137 :: 		Sound_Play(500, 100);
	MOVLW       244
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       100
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,138 :: 		Sound_Play(100, 50);}
	MOVLW       100
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       50
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
L_gameOverSound33:
;SnakeGame.c,140 :: 		}
L_end_gameOverSound:
	RETURN      0
; end of _gameOverSound

_findFoodSound:

;SnakeGame.c,142 :: 		void findFoodSound ()
;SnakeGame.c,144 :: 		if (PORTC.F7==1 && PORTE.F0==0) {
	BTFSS       PORTC+0, 7 
	GOTO        L_findFoodSound36
	BTFSC       PORTE+0, 0 
	GOTO        L_findFoodSound36
L__findFoodSound384:
;SnakeGame.c,145 :: 		Sound_Init(&PORTA, 3);
	MOVLW       PORTA+0
	MOVWF       FARG_Sound_Init_snd_port+0 
	MOVLW       hi_addr(PORTA+0)
	MOVWF       FARG_Sound_Init_snd_port+1 
	MOVLW       3
	MOVWF       FARG_Sound_Init_snd_pin+0 
	CALL        _Sound_Init+0, 0
;SnakeGame.c,146 :: 		Sound_Play(600, 100);     // Frequency = 1046Hz, duration = 100ms
	MOVLW       88
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       100
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,147 :: 		Sound_Play(300, 50);
	MOVLW       44
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       50
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,148 :: 		Sound_Play(600, 100);
	MOVLW       88
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       100
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,149 :: 		Sound_Play(300, 50);}
	MOVLW       44
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       50
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
L_findFoodSound36:
;SnakeGame.c,150 :: 		if (PORTC.F7==0 && PORTE.F0==1) {
	BTFSC       PORTC+0, 7 
	GOTO        L_findFoodSound39
	BTFSS       PORTE+0, 0 
	GOTO        L_findFoodSound39
L__findFoodSound383:
;SnakeGame.c,151 :: 		Sound_Init(&PORTA, 3);
	MOVLW       PORTA+0
	MOVWF       FARG_Sound_Init_snd_port+0 
	MOVLW       hi_addr(PORTA+0)
	MOVWF       FARG_Sound_Init_snd_port+1 
	MOVLW       3
	MOVWF       FARG_Sound_Init_snd_pin+0 
	CALL        _Sound_Init+0, 0
;SnakeGame.c,152 :: 		Sound_Play(1400, 100);     // Frequency = 1046Hz, duration = 100ms
	MOVLW       120
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       5
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       100
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,153 :: 		Sound_Play(800, 50);
	MOVLW       32
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       3
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       50
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,154 :: 		Sound_Play(1400, 100);
	MOVLW       120
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       5
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       100
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,155 :: 		Sound_Play(800, 50);}
	MOVLW       32
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       3
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       50
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
L_findFoodSound39:
;SnakeGame.c,156 :: 		if (PORTC.F7==1 && PORTE.F0==1) {
	BTFSS       PORTC+0, 7 
	GOTO        L_findFoodSound42
	BTFSS       PORTE+0, 0 
	GOTO        L_findFoodSound42
L__findFoodSound382:
;SnakeGame.c,157 :: 		Sound_Init(&PORTA, 3);
	MOVLW       PORTA+0
	MOVWF       FARG_Sound_Init_snd_port+0 
	MOVLW       hi_addr(PORTA+0)
	MOVWF       FARG_Sound_Init_snd_port+1 
	MOVLW       3
	MOVWF       FARG_Sound_Init_snd_pin+0 
	CALL        _Sound_Init+0, 0
;SnakeGame.c,158 :: 		Sound_Play(600, 100);     // Frequency = 1046Hz, duration = 100ms
	MOVLW       88
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       100
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,159 :: 		Sound_Play(300, 50);
	MOVLW       44
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       50
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,160 :: 		Sound_Play(600, 100);
	MOVLW       88
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       2
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       100
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,161 :: 		Sound_Play(300, 50);}
	MOVLW       44
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       1
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       50
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
L_findFoodSound42:
;SnakeGame.c,163 :: 		}
L_end_findFoodSound:
	RETURN      0
; end of _findFoodSound

_findBonusSound:

;SnakeGame.c,165 :: 		void findBonusSound()
;SnakeGame.c,167 :: 		Sound_Init(&PORTA, 3);     // Initialize the pin RA3 for playing sound
	MOVLW       PORTA+0
	MOVWF       FARG_Sound_Init_snd_port+0 
	MOVLW       hi_addr(PORTA+0)
	MOVWF       FARG_Sound_Init_snd_port+1 
	MOVLW       3
	MOVWF       FARG_Sound_Init_snd_pin+0 
	CALL        _Sound_Init+0, 0
;SnakeGame.c,168 :: 		Sound_Play(1300, 43);      // Frequency = 1300Hz, duration = 43ms
	MOVLW       20
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       5
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       43
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,169 :: 		Sound_Play(1120, 23);
	MOVLW       96
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       4
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       23
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,170 :: 		Sound_Play(1200, 43);
	MOVLW       176
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       4
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       43
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,171 :: 		Sound_Play(1320, 23);
	MOVLW       40
	MOVWF       FARG_Sound_Play_freq_in_hz+0 
	MOVLW       5
	MOVWF       FARG_Sound_Play_freq_in_hz+1 
	MOVLW       23
	MOVWF       FARG_Sound_Play_duration_ms+0 
	MOVLW       0
	MOVWF       FARG_Sound_Play_duration_ms+1 
	CALL        _Sound_Play+0, 0
;SnakeGame.c,172 :: 		}
L_end_findBonusSound:
	RETURN      0
; end of _findBonusSound

_gameover:

;SnakeGame.c,173 :: 		void gameover(){
;SnakeGame.c,174 :: 		gameOverSound();      // Call gameOverSound
	CALL        _gameOverSound+0, 0
;SnakeGame.c,175 :: 		snake_length= 7;      // Determine snake_length
	MOVLW       7
	MOVWF       _snake_length+0 
;SnakeGame.c,176 :: 		locX = 1;locY = 12;   // Determine initially  snake location
	MOVLW       1
	MOVWF       _locX+0 
	MOVLW       12
	MOVWF       _locY+0 
;SnakeGame.c,177 :: 		Glcd_Fill(0x00);      // Clears the screen
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;SnakeGame.c,178 :: 		Glcd_Image(deadsnake1);     //Call the created image
	MOVLW       _deadsnake1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_deadsnake1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_deadsnake1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;SnakeGame.c,179 :: 		delay_ms(200);        //Delay
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_gameover43:
	DECFSZ      R13, 1, 1
	BRA         L_gameover43
	DECFSZ      R12, 1, 1
	BRA         L_gameover43
	DECFSZ      R11, 1, 1
	BRA         L_gameover43
;SnakeGame.c,180 :: 		Glcd_Image(deadsnake2);     //Call the created image
	MOVLW       _deadsnake2+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_deadsnake2+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_deadsnake2+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;SnakeGame.c,181 :: 		delay_ms(200);        //Delay
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_gameover44:
	DECFSZ      R13, 1, 1
	BRA         L_gameover44
	DECFSZ      R12, 1, 1
	BRA         L_gameover44
	DECFSZ      R11, 1, 1
	BRA         L_gameover44
;SnakeGame.c,182 :: 		Glcd_Image(deadsnake3);     //Call the created image
	MOVLW       _deadsnake3+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_deadsnake3+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_deadsnake3+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;SnakeGame.c,183 :: 		delay_ms(200);        //Delay
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_gameover45:
	DECFSZ      R13, 1, 1
	BRA         L_gameover45
	DECFSZ      R12, 1, 1
	BRA         L_gameover45
	DECFSZ      R11, 1, 1
	BRA         L_gameover45
;SnakeGame.c,184 :: 		Glcd_Image(deadsnake4);     //Call the created image
	MOVLW       _deadsnake4+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_deadsnake4+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_deadsnake4+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;SnakeGame.c,185 :: 		delay_ms(200);        //Delay
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_gameover46:
	DECFSZ      R13, 1, 1
	BRA         L_gameover46
	DECFSZ      R12, 1, 1
	BRA         L_gameover46
	DECFSZ      R11, 1, 1
	BRA         L_gameover46
;SnakeGame.c,186 :: 		Glcd_Image(deadsnake5);     //Call the created image
	MOVLW       _deadsnake5+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_deadsnake5+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_deadsnake5+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;SnakeGame.c,187 :: 		delay_ms(200);        //Delay
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_gameover47:
	DECFSZ      R13, 1, 1
	BRA         L_gameover47
	DECFSZ      R12, 1, 1
	BRA         L_gameover47
	DECFSZ      R11, 1, 1
	BRA         L_gameover47
;SnakeGame.c,188 :: 		Glcd_Image(deadsnake6);     //Call the created image
	MOVLW       _deadsnake6+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_deadsnake6+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_deadsnake6+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;SnakeGame.c,189 :: 		delay_ms(200);        //Delay
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_gameover48:
	DECFSZ      R13, 1, 1
	BRA         L_gameover48
	DECFSZ      R12, 1, 1
	BRA         L_gameover48
	DECFSZ      R11, 1, 1
	BRA         L_gameover48
;SnakeGame.c,190 :: 		Glcd_Image(deadsnake7);     //Call the created image
	MOVLW       _deadsnake7+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_deadsnake7+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_deadsnake7+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;SnakeGame.c,191 :: 		delay_ms(200);        //Delay
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_gameover49:
	DECFSZ      R13, 1, 1
	BRA         L_gameover49
	DECFSZ      R12, 1, 1
	BRA         L_gameover49
	DECFSZ      R11, 1, 1
	BRA         L_gameover49
;SnakeGame.c,192 :: 		Glcd_Image(deadsnake8);     //Call the created image
	MOVLW       _deadsnake8+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_deadsnake8+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_deadsnake8+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;SnakeGame.c,193 :: 		delay_ms(200);        //Delay
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_gameover50:
	DECFSZ      R13, 1, 1
	BRA         L_gameover50
	DECFSZ      R12, 1, 1
	BRA         L_gameover50
	DECFSZ      R11, 1, 1
	BRA         L_gameover50
;SnakeGame.c,194 :: 		Glcd_Fill(glcd_mode);      // Clears the screen
	MOVF        _glcd_mode+0, 0 
	MOVWF       FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;SnakeGame.c,197 :: 		if (player==1){
	MOVF        _player+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover51
;SnakeGame.c,198 :: 		if(ingilizce==1){
	MOVF        _ingilizce+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover52
;SnakeGame.c,199 :: 		score_txt[13] = score/10 + 48;
	MOVLW       13
	ADDWF       _score_txt+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,200 :: 		score_txt[14] = score%10 + 48;
	MOVLW       14
	ADDWF       _score_txt+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,201 :: 		Glcd_Write_Text(score_txt,1,3,line_color);
	MOVF        _score_txt+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,202 :: 		Glcd_Write_Text("OK for playing again",1,4,line_color);
	MOVLW       ?lstr16_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr16_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,203 :: 		Glcd_Write_Text("UP for back to menu",1,5,line_color);
	MOVLW       ?lstr17_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr17_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,204 :: 		score = 0;score_txt[13]='0';score_txt[14] = '0';keep = 2;
	CLRF        _score+0 
	MOVLW       13
	ADDWF       _score_txt+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       48
	MOVWF       POSTINC1+0 
	MOVLW       14
	ADDWF       _score_txt+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       48
	MOVWF       POSTINC1+0 
	MOVLW       2
	MOVWF       _keep+0 
;SnakeGame.c,205 :: 		gameOver_sit = 0;}
	CLRF        _gameOver_sit+0 
	GOTO        L_gameover53
L_gameover52:
;SnakeGame.c,207 :: 		score_txt_t[13] = score/10 + 48;
	MOVLW       13
	ADDWF       _score_txt_t+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt_t+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,208 :: 		score_txt_t[14] = score%10 + 48;
	MOVLW       14
	ADDWF       _score_txt_t+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt_t+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,209 :: 		Glcd_Write_Text(score_txt_t,1,3,line_color);
	MOVF        _score_txt_t+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt_t+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,210 :: 		Glcd_Write_Text("OK : Tekrar Oyna",1,4,line_color);
	MOVLW       ?lstr18_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr18_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,211 :: 		Glcd_Write_Text("Up : Menuye Don ",1,5,line_color);
	MOVLW       ?lstr19_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr19_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,212 :: 		score = 0;score_txt_t[13]='0';score_txt_t[14] = '0';keep = 2;
	CLRF        _score+0 
	MOVLW       13
	ADDWF       _score_txt_t+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      _score_txt_t+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       48
	MOVWF       POSTINC1+0 
	MOVLW       14
	ADDWF       _score_txt_t+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      _score_txt_t+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       48
	MOVWF       POSTINC1+0 
	MOVLW       2
	MOVWF       _keep+0 
;SnakeGame.c,213 :: 		gameOver_sit = 0;}
	CLRF        _gameOver_sit+0 
L_gameover53:
;SnakeGame.c,214 :: 		}
	GOTO        L_gameover54
L_gameover51:
;SnakeGame.c,216 :: 		h++;
	INFSNZ      _h+0, 1 
	INCF        _h+1, 1 
;SnakeGame.c,217 :: 		if(h==1 && t==0 && light ==1 && ingilizce ==1){
	MOVLW       0
	XORWF       _h+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gameover419
	MOVLW       1
	XORWF       _h+0, 0 
L__gameover419:
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover57
	MOVF        _t+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover57
	MOVF        _light+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover57
	MOVF        _ingilizce+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover57
L__gameover388:
;SnakeGame.c,218 :: 		Glcd_Fill(0x00); Glcd_Image(player2_image); delay_ms(1500);}
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
	MOVLW       _player2_image+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_player2_image+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_player2_image+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_gameover58:
	DECFSZ      R13, 1, 1
	BRA         L_gameover58
	DECFSZ      R12, 1, 1
	BRA         L_gameover58
	DECFSZ      R11, 1, 1
	BRA         L_gameover58
	NOP
L_gameover57:
;SnakeGame.c,219 :: 		if(h==1 && t==0 && light ==2 && ingilizce ==1){
	MOVLW       0
	XORWF       _h+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gameover420
	MOVLW       1
	XORWF       _h+0, 0 
L__gameover420:
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover61
	MOVF        _t+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover61
	MOVF        _light+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover61
	MOVF        _ingilizce+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover61
L__gameover387:
;SnakeGame.c,220 :: 		Glcd_Fill(0x00); Glcd_Image(player2_image_d); delay_ms(1500);}
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
	MOVLW       _player2_image_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_player2_image_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_player2_image_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_gameover62:
	DECFSZ      R13, 1, 1
	BRA         L_gameover62
	DECFSZ      R12, 1, 1
	BRA         L_gameover62
	DECFSZ      R11, 1, 1
	BRA         L_gameover62
	NOP
L_gameover61:
;SnakeGame.c,221 :: 		if(h==1 && t==0 && light ==1 && ingilizce ==2){
	MOVLW       0
	XORWF       _h+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gameover421
	MOVLW       1
	XORWF       _h+0, 0 
L__gameover421:
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover65
	MOVF        _t+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover65
	MOVF        _light+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover65
	MOVF        _ingilizce+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover65
L__gameover386:
;SnakeGame.c,222 :: 		Glcd_Fill(0x00); Glcd_Image(oyuncu2_resim); delay_ms(1500);}
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
	MOVLW       _oyuncu2_resim+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_oyuncu2_resim+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_oyuncu2_resim+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_gameover66:
	DECFSZ      R13, 1, 1
	BRA         L_gameover66
	DECFSZ      R12, 1, 1
	BRA         L_gameover66
	DECFSZ      R11, 1, 1
	BRA         L_gameover66
	NOP
L_gameover65:
;SnakeGame.c,223 :: 		if(h==1 && t==0 && light ==2 && ingilizce ==2){
	MOVLW       0
	XORWF       _h+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gameover422
	MOVLW       1
	XORWF       _h+0, 0 
L__gameover422:
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover69
	MOVF        _t+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover69
	MOVF        _light+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover69
	MOVF        _ingilizce+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover69
L__gameover385:
;SnakeGame.c,224 :: 		Glcd_Fill(0x00); Glcd_Image(oyuncu2_resim_d); delay_ms(1500);}
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
	MOVLW       _oyuncu2_resim_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_oyuncu2_resim_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_oyuncu2_resim_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_gameover70:
	DECFSZ      R13, 1, 1
	BRA         L_gameover70
	DECFSZ      R12, 1, 1
	BRA         L_gameover70
	DECFSZ      R11, 1, 1
	BRA         L_gameover70
	NOP
L_gameover69:
;SnakeGame.c,225 :: 		if (h==2){
	MOVLW       0
	XORWF       _h+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gameover423
	MOVLW       2
	XORWF       _h+0, 0 
L__gameover423:
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover71
;SnakeGame.c,226 :: 		gameOver_sit = 0;
	CLRF        _gameOver_sit+0 
;SnakeGame.c,229 :: 		if( (score2/10 + 48)*10+(score2%10 + 48) > (score/10 + 48)*10+(score%10 + 48)){
	MOVLW       10
	MOVWF       R4 
	MOVF        _score2+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__gameover+0 
	MOVF        R1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score2+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	ADDWF       FLOC__gameover+0, 0 
	MOVWF       FLOC__gameover+2 
	MOVF        R1, 0 
	ADDWFC      FLOC__gameover+1, 0 
	MOVWF       FLOC__gameover+3 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__gameover+0 
	MOVF        R1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	ADDWF       FLOC__gameover+0, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	ADDWFC      FLOC__gameover+1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       R3, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       FLOC__gameover+3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gameover424
	MOVF        FLOC__gameover+2, 0 
	SUBWF       R2, 0 
L__gameover424:
	BTFSC       STATUS+0, 0 
	GOTO        L_gameover72
;SnakeGame.c,230 :: 		if(ingilizce==1){
	MOVF        _ingilizce+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover73
;SnakeGame.c,231 :: 		score_txt1[15] = score2/10 + 48;
	MOVLW       15
	ADDWF       _score_txt1+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt1+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score2+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,232 :: 		score_txt1[16] = score2%10 + 48;
	MOVLW       16
	ADDWF       _score_txt1+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt1+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score2+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,233 :: 		score_txt2[15] = score/10 + 48;
	MOVLW       15
	ADDWF       _score_txt2+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt2+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,234 :: 		score_txt2[16] = score%10 + 48;
	MOVLW       16
	ADDWF       _score_txt2+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt2+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,235 :: 		Glcd_Write_Text(score_txt1,1,1,line_color);
	MOVF        _score_txt1+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt1+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,236 :: 		Glcd_Write_Text(score_txt2,1,2,line_color);
	MOVF        _score_txt2+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt2+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,237 :: 		Glcd_Write_Text(player1win,1,3,line_color);
	MOVF        _player1win+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _player1win+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,238 :: 		Glcd_Write_Text("OK for playing again",1,5,line_color);
	MOVLW       ?lstr20_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr20_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,239 :: 		Glcd_Write_Text("UP for back to menu",1,6,line_color);}
	MOVLW       ?lstr21_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr21_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
	GOTO        L_gameover74
L_gameover73:
;SnakeGame.c,241 :: 		score_txt1_t[15] = score2/10 + 48;
	MOVLW       15
	ADDWF       _score_txt1_t+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt1_t+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score2+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,242 :: 		score_txt1_t[16] = score2%10 + 48;
	MOVLW       16
	ADDWF       _score_txt1_t+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt1_t+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score2+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,243 :: 		score_txt2_t[15] = score/10 + 48;
	MOVLW       15
	ADDWF       _score_txt2_t+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt2_t+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,244 :: 		score_txt2_t[16] = score%10 + 48;
	MOVLW       16
	ADDWF       _score_txt2_t+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt2_t+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,245 :: 		Glcd_Write_Text(score_txt1_t,1,1,line_color);
	MOVF        _score_txt1_t+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt1_t+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,246 :: 		Glcd_Write_Text(score_txt2_t,1,2,line_color);
	MOVF        _score_txt2_t+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt2_t+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,247 :: 		Glcd_Write_Text(player1win_t,1,3,line_color);
	MOVF        _player1win_t+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _player1win_t+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,248 :: 		Glcd_Write_Text("OK : Tekrar Oyna",1,5,line_color);
	MOVLW       ?lstr22_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr22_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,249 :: 		Glcd_Write_Text("Up : Menuye Don ",1,6,line_color);}
	MOVLW       ?lstr23_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr23_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
L_gameover74:
;SnakeGame.c,250 :: 		}
	GOTO        L_gameover75
L_gameover72:
;SnakeGame.c,252 :: 		if(ingilizce==1){
	MOVF        _ingilizce+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_gameover76
;SnakeGame.c,253 :: 		score_txt1[15] = score2/10 + 48;
	MOVLW       15
	ADDWF       _score_txt1+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt1+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score2+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,254 :: 		score_txt1[16] = score2%10 + 48;
	MOVLW       16
	ADDWF       _score_txt1+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt1+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score2+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,255 :: 		score_txt2[15] = score/10 + 48;
	MOVLW       15
	ADDWF       _score_txt2+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt2+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,256 :: 		score_txt2[16] = score%10 + 48;
	MOVLW       16
	ADDWF       _score_txt2+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt2+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,257 :: 		Glcd_Write_Text(score_txt1,1,1,line_color);
	MOVF        _score_txt1+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt1+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,258 :: 		Glcd_Write_Text(score_txt2,1,2,line_color);
	MOVF        _score_txt2+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt2+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,259 :: 		Glcd_Write_Text(player2win,1,3,line_color);
	MOVF        _player2win+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _player2win+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,260 :: 		Glcd_Write_Text("OK for playing again",1,5,line_color);
	MOVLW       ?lstr24_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr24_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,261 :: 		Glcd_Write_Text("UP for back to menu",1,6,line_color); }
	MOVLW       ?lstr25_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr25_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
	GOTO        L_gameover77
L_gameover76:
;SnakeGame.c,263 :: 		score_txt1_t[15] = score2/10 + 48;
	MOVLW       15
	ADDWF       _score_txt1_t+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt1_t+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score2+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,264 :: 		score_txt1_t[16] = score2%10 + 48;
	MOVLW       16
	ADDWF       _score_txt1_t+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt1_t+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score2+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,265 :: 		score_txt2_t[15] = score/10 + 48;
	MOVLW       15
	ADDWF       _score_txt2_t+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt2_t+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,266 :: 		score_txt2_t[16] = score%10 + 48;
	MOVLW       16
	ADDWF       _score_txt2_t+0, 0 
	MOVWF       FLOC__gameover+0 
	MOVLW       0
	ADDWFC      _score_txt2_t+1, 0 
	MOVWF       FLOC__gameover+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__gameover+0, FSR1L+0
	MOVFF       FLOC__gameover+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,267 :: 		Glcd_Write_Text(score_txt1_t,1,1,line_color);
	MOVF        _score_txt1_t+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt1_t+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,268 :: 		Glcd_Write_Text(score_txt2_t,1,2,line_color);
	MOVF        _score_txt2_t+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt2_t+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,269 :: 		Glcd_Write_Text(player2win_t,1,3,line_color);
	MOVF        _player2win_t+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _player2win_t+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,270 :: 		Glcd_Write_Text("OK : Tekrar Oyna",1,5,line_color);
	MOVLW       ?lstr26_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr26_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,271 :: 		Glcd_Write_Text("Up : Menuye Don ",1,6,1);
	MOVLW       ?lstr27_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr27_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,272 :: 		}
L_gameover77:
;SnakeGame.c,273 :: 		}
L_gameover75:
;SnakeGame.c,275 :: 		}
	GOTO        L_gameover78
L_gameover71:
;SnakeGame.c,277 :: 		score2 = score;
	MOVF        _score+0, 0 
	MOVWF       _score2+0 
;SnakeGame.c,278 :: 		score = 0;score_txt[13]='0';score_txt[14] = '0';keep = 2;
	CLRF        _score+0 
	MOVLW       13
	ADDWF       _score_txt+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       48
	MOVWF       POSTINC1+0 
	MOVLW       14
	ADDWF       _score_txt+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       48
	MOVWF       POSTINC1+0 
	MOVLW       2
	MOVWF       _keep+0 
;SnakeGame.c,279 :: 		score_txt_t[13]='0';score_txt_t[14] = '0';
	MOVLW       13
	ADDWF       _score_txt_t+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      _score_txt_t+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       48
	MOVWF       POSTINC1+0 
	MOVLW       14
	ADDWF       _score_txt_t+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      _score_txt_t+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       48
	MOVWF       POSTINC1+0 
;SnakeGame.c,280 :: 		gameOver_sit =1;
	MOVLW       1
	MOVWF       _gameOver_sit+0 
;SnakeGame.c,281 :: 		}
L_gameover78:
;SnakeGame.c,282 :: 		}
L_gameover54:
;SnakeGame.c,284 :: 		}
L_end_gameover:
	RETURN      0
; end of _gameover

_interrupt:

;SnakeGame.c,286 :: 		void interrupt(){
;SnakeGame.c,287 :: 		if(INT1IF_bit==1 & menu_no==1 & step_no==1){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt427
	BCF         R2, 0 
	GOTO        L__interrupt428
L__interrupt427:
	BSF         R2, 0 
L__interrupt428:
	MOVF        _menu_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt79
;SnakeGame.c,288 :: 		menu_no=3;
	MOVLW       3
	MOVWF       _menu_no+0 
;SnakeGame.c,289 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt79:
;SnakeGame.c,290 :: 		if(INT1IF_bit==1 & menu_no==2  & step_no==1){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt429
	BCF         R2, 0 
	GOTO        L__interrupt430
L__interrupt429:
	BSF         R2, 0 
L__interrupt430:
	MOVF        _menu_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt80
;SnakeGame.c,291 :: 		menu_no=1;
	MOVLW       1
	MOVWF       _menu_no+0 
;SnakeGame.c,292 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt80:
;SnakeGame.c,293 :: 		if(INT1IF_bit==1 & menu_no==3  & step_no==1){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt431
	BCF         R2, 0 
	GOTO        L__interrupt432
L__interrupt431:
	BSF         R2, 0 
L__interrupt432:
	MOVF        _menu_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt81
;SnakeGame.c,294 :: 		menu_no=2;
	MOVLW       2
	MOVWF       _menu_no+0 
;SnakeGame.c,295 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt81:
;SnakeGame.c,296 :: 		if(INT2IF_bit==1 & menu_no==1  & step_no==1){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt433
	BCF         R2, 0 
	GOTO        L__interrupt434
L__interrupt433:
	BSF         R2, 0 
L__interrupt434:
	MOVF        _menu_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt82
;SnakeGame.c,297 :: 		menu_no=2;
	MOVLW       2
	MOVWF       _menu_no+0 
;SnakeGame.c,298 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt82:
;SnakeGame.c,299 :: 		if(INT2IF_bit==1 & menu_no==2  & step_no==1){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt435
	BCF         R2, 0 
	GOTO        L__interrupt436
L__interrupt435:
	BSF         R2, 0 
L__interrupt436:
	MOVF        _menu_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt83
;SnakeGame.c,300 :: 		menu_no=3;
	MOVLW       3
	MOVWF       _menu_no+0 
;SnakeGame.c,301 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt83:
;SnakeGame.c,302 :: 		if(INT2IF_bit==1 & menu_no==3  & step_no==1){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt437
	BCF         R2, 0 
	GOTO        L__interrupt438
L__interrupt437:
	BSF         R2, 0 
L__interrupt438:
	MOVF        _menu_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt84
;SnakeGame.c,303 :: 		menu_no=1;
	MOVLW       1
	MOVWF       _menu_no+0 
;SnakeGame.c,304 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt84:
;SnakeGame.c,306 :: 		if(INT0IF_bit==1 & menu_no==2 & step_no==1){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt439
	BCF         R2, 0 
	GOTO        L__interrupt440
L__interrupt439:
	BSF         R2, 0 
L__interrupt440:
	MOVF        _menu_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt85
;SnakeGame.c,307 :: 		menu_no=2;
	MOVLW       2
	MOVWF       _menu_no+0 
;SnakeGame.c,308 :: 		step_no=2;
	MOVLW       2
	MOVWF       _step_no+0 
;SnakeGame.c,309 :: 		INT0IF_bit=0;}
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
L_interrupt85:
;SnakeGame.c,311 :: 		if(INT1IF_bit==1 & difficulty_level==1 & step_no==2){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt441
	BCF         R2, 0 
	GOTO        L__interrupt442
L__interrupt441:
	BSF         R2, 0 
L__interrupt442:
	MOVF        _difficulty_level+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt86
;SnakeGame.c,312 :: 		difficulty_level=3;
	MOVLW       3
	MOVWF       _difficulty_level+0 
;SnakeGame.c,313 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt86:
;SnakeGame.c,314 :: 		if(INT1IF_bit==1 & difficulty_level==2  & step_no==2){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt443
	BCF         R2, 0 
	GOTO        L__interrupt444
L__interrupt443:
	BSF         R2, 0 
L__interrupt444:
	MOVF        _difficulty_level+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt87
;SnakeGame.c,315 :: 		difficulty_level=1;
	MOVLW       1
	MOVWF       _difficulty_level+0 
;SnakeGame.c,316 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt87:
;SnakeGame.c,317 :: 		if(INT1IF_bit==1 & difficulty_level==3  & step_no==2){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt445
	BCF         R2, 0 
	GOTO        L__interrupt446
L__interrupt445:
	BSF         R2, 0 
L__interrupt446:
	MOVF        _difficulty_level+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt88
;SnakeGame.c,318 :: 		difficulty_level=2;
	MOVLW       2
	MOVWF       _difficulty_level+0 
;SnakeGame.c,319 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt88:
;SnakeGame.c,320 :: 		if(INT2IF_bit==1 & difficulty_level==1  & step_no==2){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt447
	BCF         R2, 0 
	GOTO        L__interrupt448
L__interrupt447:
	BSF         R2, 0 
L__interrupt448:
	MOVF        _difficulty_level+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt89
;SnakeGame.c,321 :: 		difficulty_level=2;
	MOVLW       2
	MOVWF       _difficulty_level+0 
;SnakeGame.c,322 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt89:
;SnakeGame.c,323 :: 		if(INT2IF_bit==1 & difficulty_level==2  & step_no==2){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt449
	BCF         R2, 0 
	GOTO        L__interrupt450
L__interrupt449:
	BSF         R2, 0 
L__interrupt450:
	MOVF        _difficulty_level+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt90
;SnakeGame.c,324 :: 		difficulty_level=3;
	MOVLW       3
	MOVWF       _difficulty_level+0 
;SnakeGame.c,325 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt90:
;SnakeGame.c,326 :: 		if(INT2IF_bit==1 & difficulty_level==3  & step_no==2){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt451
	BCF         R2, 0 
	GOTO        L__interrupt452
L__interrupt451:
	BSF         R2, 0 
L__interrupt452:
	MOVF        _difficulty_level+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt91
;SnakeGame.c,327 :: 		difficulty_level=1;
	MOVLW       1
	MOVWF       _difficulty_level+0 
;SnakeGame.c,328 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt91:
;SnakeGame.c,330 :: 		if(INT0IF_bit==1 & difficulty_level==1 & step_no==2){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt453
	BCF         R2, 0 
	GOTO        L__interrupt454
L__interrupt453:
	BSF         R2, 0 
L__interrupt454:
	MOVF        _difficulty_level+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt92
;SnakeGame.c,331 :: 		step_no=1;
	MOVLW       1
	MOVWF       _step_no+0 
;SnakeGame.c,332 :: 		difficulty_level=1;
	MOVLW       1
	MOVWF       _difficulty_level+0 
;SnakeGame.c,333 :: 		INT0IF_bit=0;
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;SnakeGame.c,334 :: 		speed=6;}
	MOVLW       6
	MOVWF       _speed+0 
	MOVLW       0
	MOVWF       _speed+1 
L_interrupt92:
;SnakeGame.c,335 :: 		if(INT0IF_bit==1 & difficulty_level==2 & step_no==2){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt455
	BCF         R2, 0 
	GOTO        L__interrupt456
L__interrupt455:
	BSF         R2, 0 
L__interrupt456:
	MOVF        _difficulty_level+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt93
;SnakeGame.c,336 :: 		step_no=1;
	MOVLW       1
	MOVWF       _step_no+0 
;SnakeGame.c,337 :: 		difficulty_level=2;
	MOVLW       2
	MOVWF       _difficulty_level+0 
;SnakeGame.c,338 :: 		INT0IF_bit=0;
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;SnakeGame.c,339 :: 		speed=4;}
	MOVLW       4
	MOVWF       _speed+0 
	MOVLW       0
	MOVWF       _speed+1 
L_interrupt93:
;SnakeGame.c,340 :: 		if(INT0IF_bit==1 & difficulty_level==3 & step_no==2){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt457
	BCF         R2, 0 
	GOTO        L__interrupt458
L__interrupt457:
	BSF         R2, 0 
L__interrupt458:
	MOVF        _difficulty_level+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt94
;SnakeGame.c,341 :: 		step_no=1;
	MOVLW       1
	MOVWF       _step_no+0 
;SnakeGame.c,342 :: 		difficulty_level=3;
	MOVLW       3
	MOVWF       _difficulty_level+0 
;SnakeGame.c,343 :: 		INT0IF_bit=0;
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;SnakeGame.c,344 :: 		speed=3;}
	MOVLW       3
	MOVWF       _speed+0 
	MOVLW       0
	MOVWF       _speed+1 
L_interrupt94:
;SnakeGame.c,347 :: 		if(INT0IF_bit==1 & menu_no==1 & step_no==1){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt459
	BCF         R2, 0 
	GOTO        L__interrupt460
L__interrupt459:
	BSF         R2, 0 
L__interrupt460:
	MOVF        _menu_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt95
;SnakeGame.c,348 :: 		menu_no=1;
	MOVLW       1
	MOVWF       _menu_no+0 
;SnakeGame.c,349 :: 		step_no=3;
	MOVLW       3
	MOVWF       _step_no+0 
;SnakeGame.c,350 :: 		INT0IF_bit=0;}
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
L_interrupt95:
;SnakeGame.c,352 :: 		if(INT1IF_bit==1 & player==1 & step_no==3){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt461
	BCF         R2, 0 
	GOTO        L__interrupt462
L__interrupt461:
	BSF         R2, 0 
L__interrupt462:
	MOVF        _player+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt96
;SnakeGame.c,353 :: 		player=2;
	MOVLW       2
	MOVWF       _player+0 
;SnakeGame.c,354 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt96:
;SnakeGame.c,355 :: 		if(INT1IF_bit==1 & player==2  & step_no==3){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt463
	BCF         R2, 0 
	GOTO        L__interrupt464
L__interrupt463:
	BSF         R2, 0 
L__interrupt464:
	MOVF        _player+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt97
;SnakeGame.c,356 :: 		player=1;
	MOVLW       1
	MOVWF       _player+0 
;SnakeGame.c,357 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt97:
;SnakeGame.c,358 :: 		if(INT2IF_bit==1 & player==2  & step_no==3){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt465
	BCF         R2, 0 
	GOTO        L__interrupt466
L__interrupt465:
	BSF         R2, 0 
L__interrupt466:
	MOVF        _player+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt98
;SnakeGame.c,359 :: 		player=1;
	MOVLW       1
	MOVWF       _player+0 
;SnakeGame.c,360 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt98:
;SnakeGame.c,361 :: 		if(INT2IF_bit==1 & player==1  & step_no==3){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt467
	BCF         R2, 0 
	GOTO        L__interrupt468
L__interrupt467:
	BSF         R2, 0 
L__interrupt468:
	MOVF        _player+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt99
;SnakeGame.c,362 :: 		player=2;
	MOVLW       2
	MOVWF       _player+0 
;SnakeGame.c,363 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt99:
;SnakeGame.c,365 :: 		if(INT0IF_bit==1 & player==1 & step_no==3){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt469
	BCF         R2, 0 
	GOTO        L__interrupt470
L__interrupt469:
	BSF         R2, 0 
L__interrupt470:
	MOVF        _player+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt100
;SnakeGame.c,366 :: 		player=1;
	MOVLW       1
	MOVWF       _player+0 
;SnakeGame.c,367 :: 		step_no=8;
	MOVLW       8
	MOVWF       _step_no+0 
;SnakeGame.c,368 :: 		po=0;
	CLRF        _po+0 
	CLRF        _po+1 
;SnakeGame.c,369 :: 		INT0IF_bit=0;}
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
L_interrupt100:
;SnakeGame.c,371 :: 		if(INT0IF_bit==1 & player==2 & step_no==3){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt471
	BCF         R2, 0 
	GOTO        L__interrupt472
L__interrupt471:
	BSF         R2, 0 
L__interrupt472:
	MOVF        _player+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt101
;SnakeGame.c,372 :: 		player=2;
	MOVLW       2
	MOVWF       _player+0 
;SnakeGame.c,373 :: 		step_no=8;
	MOVLW       8
	MOVWF       _step_no+0 
;SnakeGame.c,374 :: 		po=0;
	CLRF        _po+0 
	CLRF        _po+1 
;SnakeGame.c,375 :: 		INT0IF_bit=0;}
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
L_interrupt101:
;SnakeGame.c,377 :: 		if(INT1IF_bit==1  & step_no==8){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt473
	BCF         R2, 0 
	GOTO        L__interrupt474
L__interrupt473:
	BSF         R2, 0 
L__interrupt474:
	MOVF        _step_no+0, 0 
	XORLW       8
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt102
;SnakeGame.c,378 :: 		if (t<3){t++;}
	MOVLW       3
	SUBWF       _t+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_interrupt103
	INCF        _t+0, 1 
	GOTO        L_interrupt104
L_interrupt103:
;SnakeGame.c,379 :: 		else{t=3;}
	MOVLW       3
	MOVWF       _t+0 
L_interrupt104:
;SnakeGame.c,380 :: 		u=t;
	MOVF        _t+0, 0 
	MOVWF       _u+0 
;SnakeGame.c,381 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt102:
;SnakeGame.c,383 :: 		if(INT2IF_bit==1 & step_no==8){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt475
	BCF         R2, 0 
	GOTO        L__interrupt476
L__interrupt475:
	BSF         R2, 0 
L__interrupt476:
	MOVF        _step_no+0, 0 
	XORLW       8
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt105
;SnakeGame.c,384 :: 		if(t>1){t--;}
	MOVF        _t+0, 0 
	SUBLW       1
	BTFSC       STATUS+0, 0 
	GOTO        L_interrupt106
	DECF        _t+0, 1 
	GOTO        L_interrupt107
L_interrupt106:
;SnakeGame.c,385 :: 		else{t=1;}
	MOVLW       1
	MOVWF       _t+0 
L_interrupt107:
;SnakeGame.c,386 :: 		u=t;
	MOVF        _t+0, 0 
	MOVWF       _u+0 
;SnakeGame.c,387 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt105:
;SnakeGame.c,389 :: 		if(INT0IF_bit==1 & step_no==8){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt477
	BCF         R2, 0 
	GOTO        L__interrupt478
L__interrupt477:
	BSF         R2, 0 
L__interrupt478:
	MOVF        _step_no+0, 0 
	XORLW       8
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt108
;SnakeGame.c,390 :: 		step_no=7;
	MOVLW       7
	MOVWF       _step_no+0 
;SnakeGame.c,391 :: 		INT0IF_bit=0;}
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
L_interrupt108:
;SnakeGame.c,394 :: 		if(INT0IF_bit==1 & step_no==7){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt479
	BCF         R2, 0 
	GOTO        L__interrupt480
L__interrupt479:
	BSF         R2, 0 
L__interrupt480:
	MOVF        _step_no+0, 0 
	XORLW       7
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt109
;SnakeGame.c,395 :: 		step_no=7;
	MOVLW       7
	MOVWF       _step_no+0 
;SnakeGame.c,396 :: 		gameOver_sit = 1;
	MOVLW       1
	MOVWF       _gameOver_sit+0 
;SnakeGame.c,397 :: 		score = 0;
	CLRF        _score+0 
;SnakeGame.c,398 :: 		score_txt[13] = score/10 + 48;
	MOVLW       13
	ADDWF       _score_txt+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       48
	MOVWF       POSTINC1+0 
;SnakeGame.c,399 :: 		score_txt[14] = score%10 + 48;
	MOVLW       14
	ADDWF       _score_txt+0, 0 
	MOVWF       FLOC__interrupt+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FLOC__interrupt+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__interrupt+0, FSR1L+0
	MOVFF       FLOC__interrupt+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,400 :: 		score_txt_t[13] = score/10 + 48;
	MOVLW       13
	ADDWF       _score_txt_t+0, 0 
	MOVWF       FLOC__interrupt+0 
	MOVLW       0
	ADDWFC      _score_txt_t+1, 0 
	MOVWF       FLOC__interrupt+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__interrupt+0, FSR1L+0
	MOVFF       FLOC__interrupt+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,401 :: 		score_txt_t[14] = score%10 + 48;
	MOVLW       14
	ADDWF       _score_txt_t+0, 0 
	MOVWF       FLOC__interrupt+0 
	MOVLW       0
	ADDWFC      _score_txt_t+1, 0 
	MOVWF       FLOC__interrupt+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__interrupt+0, FSR1L+0
	MOVFF       FLOC__interrupt+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,402 :: 		INT0IF_bit=0;
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;SnakeGame.c,403 :: 		h=0;}
	CLRF        _h+0 
	CLRF        _h+1 
L_interrupt109:
;SnakeGame.c,405 :: 		if(INT1IF_bit==1 & step_no==7){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt481
	BCF         R2, 0 
	GOTO        L__interrupt482
L__interrupt481:
	BSF         R2, 0 
L__interrupt482:
	MOVF        _step_no+0, 0 
	XORLW       7
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt110
;SnakeGame.c,406 :: 		step_no=1;
	MOVLW       1
	MOVWF       _step_no+0 
;SnakeGame.c,407 :: 		menu_no=1;
	MOVLW       1
	MOVWF       _menu_no+0 
;SnakeGame.c,408 :: 		gameOver_sit = 1;
	MOVLW       1
	MOVWF       _gameOver_sit+0 
;SnakeGame.c,409 :: 		INT0IF_bit=0;
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;SnakeGame.c,410 :: 		score = 0;
	CLRF        _score+0 
;SnakeGame.c,411 :: 		score_txt[13] = score/10 + 48;
	MOVLW       13
	ADDWF       _score_txt+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       48
	MOVWF       POSTINC1+0 
;SnakeGame.c,412 :: 		score_txt[14] = score%10 + 48;
	MOVLW       14
	ADDWF       _score_txt+0, 0 
	MOVWF       FLOC__interrupt+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FLOC__interrupt+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__interrupt+0, FSR1L+0
	MOVFF       FLOC__interrupt+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,413 :: 		score_txt_t[13] = score/10 + 48;
	MOVLW       13
	ADDWF       _score_txt_t+0, 0 
	MOVWF       FLOC__interrupt+0 
	MOVLW       0
	ADDWFC      _score_txt_t+1, 0 
	MOVWF       FLOC__interrupt+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__interrupt+0, FSR1L+0
	MOVFF       FLOC__interrupt+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,414 :: 		score_txt_t[14] = score%10 + 48;
	MOVLW       14
	ADDWF       _score_txt_t+0, 0 
	MOVWF       FLOC__interrupt+0 
	MOVLW       0
	ADDWFC      _score_txt_t+1, 0 
	MOVWF       FLOC__interrupt+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__interrupt+0, FSR1L+0
	MOVFF       FLOC__interrupt+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,415 :: 		h=0;}
	CLRF        _h+0 
	CLRF        _h+1 
L_interrupt110:
;SnakeGame.c,420 :: 		if(INT0IF_bit==1 & menu_no==3 & step_no==1){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt483
	BCF         R2, 0 
	GOTO        L__interrupt484
L__interrupt483:
	BSF         R2, 0 
L__interrupt484:
	MOVF        _menu_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt111
;SnakeGame.c,421 :: 		menu_no=3;
	MOVLW       3
	MOVWF       _menu_no+0 
;SnakeGame.c,422 :: 		step_no=4;
	MOVLW       4
	MOVWF       _step_no+0 
;SnakeGame.c,423 :: 		INT0IF_bit=0;}
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
L_interrupt111:
;SnakeGame.c,425 :: 		if(INT1IF_bit==1 & settingStep==1 & step_no==4){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt485
	BCF         R2, 0 
	GOTO        L__interrupt486
L__interrupt485:
	BSF         R2, 0 
L__interrupt486:
	MOVF        _settingStep+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt112
;SnakeGame.c,426 :: 		settingStep=2;
	MOVLW       2
	MOVWF       _settingStep+0 
;SnakeGame.c,427 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt112:
;SnakeGame.c,428 :: 		if(INT1IF_bit==1 & settingStep==2  & step_no==4){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt487
	BCF         R2, 0 
	GOTO        L__interrupt488
L__interrupt487:
	BSF         R2, 0 
L__interrupt488:
	MOVF        _settingStep+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt113
;SnakeGame.c,429 :: 		settingStep=1;
	MOVLW       1
	MOVWF       _settingStep+0 
;SnakeGame.c,430 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt113:
;SnakeGame.c,431 :: 		if(INT2IF_bit==1 & settingStep==2  & step_no==4){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt489
	BCF         R2, 0 
	GOTO        L__interrupt490
L__interrupt489:
	BSF         R2, 0 
L__interrupt490:
	MOVF        _settingStep+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt114
;SnakeGame.c,432 :: 		settingStep=1;
	MOVLW       1
	MOVWF       _settingStep+0 
;SnakeGame.c,433 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt114:
;SnakeGame.c,434 :: 		if(INT2IF_bit==1 & settingStep==1  & step_no==4){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt491
	BCF         R2, 0 
	GOTO        L__interrupt492
L__interrupt491:
	BSF         R2, 0 
L__interrupt492:
	MOVF        _settingStep+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt115
;SnakeGame.c,435 :: 		settingStep=2;
	MOVLW       2
	MOVWF       _settingStep+0 
;SnakeGame.c,436 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt115:
;SnakeGame.c,438 :: 		if(INT0IF_bit==1 & settingStep==1 & step_no==4){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt493
	BCF         R2, 0 
	GOTO        L__interrupt494
L__interrupt493:
	BSF         R2, 0 
L__interrupt494:
	MOVF        _settingStep+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt116
;SnakeGame.c,439 :: 		settingStep=1;
	MOVLW       1
	MOVWF       _settingStep+0 
;SnakeGame.c,440 :: 		step_no=5;
	MOVLW       5
	MOVWF       _step_no+0 
;SnakeGame.c,441 :: 		INT0IF_bit=0;}
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
L_interrupt116:
;SnakeGame.c,443 :: 		if(INT1IF_bit==1 & ingilizce==1 & step_no==5){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt495
	BCF         R2, 0 
	GOTO        L__interrupt496
L__interrupt495:
	BSF         R2, 0 
L__interrupt496:
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt117
;SnakeGame.c,444 :: 		ingilizce=2;
	MOVLW       2
	MOVWF       _ingilizce+0 
;SnakeGame.c,445 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt117:
;SnakeGame.c,446 :: 		if(INT1IF_bit==1 & ingilizce==2  & step_no==5){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt497
	BCF         R2, 0 
	GOTO        L__interrupt498
L__interrupt497:
	BSF         R2, 0 
L__interrupt498:
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt118
;SnakeGame.c,447 :: 		ingilizce=1;
	MOVLW       1
	MOVWF       _ingilizce+0 
;SnakeGame.c,448 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt118:
;SnakeGame.c,449 :: 		if(INT2IF_bit==1 & ingilizce==2  & step_no==5){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt499
	BCF         R2, 0 
	GOTO        L__interrupt500
L__interrupt499:
	BSF         R2, 0 
L__interrupt500:
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt119
;SnakeGame.c,450 :: 		ingilizce=1;
	MOVLW       1
	MOVWF       _ingilizce+0 
;SnakeGame.c,451 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt119:
;SnakeGame.c,452 :: 		if(INT2IF_bit==1 & ingilizce==1  & step_no==5){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt501
	BCF         R2, 0 
	GOTO        L__interrupt502
L__interrupt501:
	BSF         R2, 0 
L__interrupt502:
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt120
;SnakeGame.c,453 :: 		ingilizce=2;
	MOVLW       2
	MOVWF       _ingilizce+0 
;SnakeGame.c,454 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt120:
;SnakeGame.c,456 :: 		if(INT0IF_bit==1 & ingilizce==1 & step_no==5){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt503
	BCF         R2, 0 
	GOTO        L__interrupt504
L__interrupt503:
	BSF         R2, 0 
L__interrupt504:
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt121
;SnakeGame.c,457 :: 		ingilizce=1;
	MOVLW       1
	MOVWF       _ingilizce+0 
;SnakeGame.c,458 :: 		step_no=1;
	MOVLW       1
	MOVWF       _step_no+0 
;SnakeGame.c,459 :: 		INT0IF_bit=0;}
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
L_interrupt121:
;SnakeGame.c,460 :: 		if(INT0IF_bit==1 & ingilizce==2 & step_no==5){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt505
	BCF         R2, 0 
	GOTO        L__interrupt506
L__interrupt505:
	BSF         R2, 0 
L__interrupt506:
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt122
;SnakeGame.c,461 :: 		ingilizce=2;
	MOVLW       2
	MOVWF       _ingilizce+0 
;SnakeGame.c,462 :: 		step_no=1;
	MOVLW       1
	MOVWF       _step_no+0 
;SnakeGame.c,463 :: 		INT0IF_bit=0;}
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
L_interrupt122:
;SnakeGame.c,466 :: 		if(INT0IF_bit==1 & settingStep==2 & step_no==4){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt507
	BCF         R2, 0 
	GOTO        L__interrupt508
L__interrupt507:
	BSF         R2, 0 
L__interrupt508:
	MOVF        _settingStep+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt123
;SnakeGame.c,467 :: 		settingStep=1;
	MOVLW       1
	MOVWF       _settingStep+0 
;SnakeGame.c,468 :: 		step_no=6;
	MOVLW       6
	MOVWF       _step_no+0 
;SnakeGame.c,469 :: 		INT0IF_bit=0;}
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
L_interrupt123:
;SnakeGame.c,471 :: 		if(INT1IF_bit==1 & light==1 & step_no==6){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt509
	BCF         R2, 0 
	GOTO        L__interrupt510
L__interrupt509:
	BSF         R2, 0 
L__interrupt510:
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       6
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt124
;SnakeGame.c,472 :: 		light=2;
	MOVLW       2
	MOVWF       _light+0 
;SnakeGame.c,473 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt124:
;SnakeGame.c,474 :: 		if(INT1IF_bit==1 & light==2  & step_no==6){
	BTFSC       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L__interrupt511
	BCF         R2, 0 
	GOTO        L__interrupt512
L__interrupt511:
	BSF         R2, 0 
L__interrupt512:
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       6
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt125
;SnakeGame.c,475 :: 		light=1;
	MOVLW       1
	MOVWF       _light+0 
;SnakeGame.c,476 :: 		INT1IF_bit=0;}
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
L_interrupt125:
;SnakeGame.c,477 :: 		if(INT2IF_bit==1 & light==2  & step_no==6){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt513
	BCF         R2, 0 
	GOTO        L__interrupt514
L__interrupt513:
	BSF         R2, 0 
L__interrupt514:
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       6
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt126
;SnakeGame.c,478 :: 		light=1;
	MOVLW       1
	MOVWF       _light+0 
;SnakeGame.c,479 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt126:
;SnakeGame.c,480 :: 		if(INT2IF_bit==1 & light==1  & step_no==6){
	BTFSC       INT2IF_bit+0, BitPos(INT2IF_bit+0) 
	GOTO        L__interrupt515
	BCF         R2, 0 
	GOTO        L__interrupt516
L__interrupt515:
	BSF         R2, 0 
L__interrupt516:
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       6
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt127
;SnakeGame.c,481 :: 		light=2;
	MOVLW       2
	MOVWF       _light+0 
;SnakeGame.c,482 :: 		INT2IF_bit=0;}
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
L_interrupt127:
;SnakeGame.c,484 :: 		if(INT0IF_bit==1 & light==1 & step_no==6){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt517
	BCF         R2, 0 
	GOTO        L__interrupt518
L__interrupt517:
	BSF         R2, 0 
L__interrupt518:
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       6
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt128
;SnakeGame.c,485 :: 		light=1;
	MOVLW       1
	MOVWF       _light+0 
;SnakeGame.c,486 :: 		step_no=1;
	MOVLW       1
	MOVWF       _step_no+0 
;SnakeGame.c,487 :: 		glcd_mode = 0x00;
	CLRF        _glcd_mode+0 
;SnakeGame.c,488 :: 		INT0IF_bit=0;
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;SnakeGame.c,489 :: 		line_color=1;
	MOVLW       1
	MOVWF       _line_color+0 
;SnakeGame.c,490 :: 		line_color_inverse=0;}
	CLRF        _line_color_inverse+0 
L_interrupt128:
;SnakeGame.c,491 :: 		if(INT0IF_bit==1 & light==2 & step_no==6){
	BTFSC       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L__interrupt519
	BCF         R2, 0 
	GOTO        L__interrupt520
L__interrupt519:
	BSF         R2, 0 
L__interrupt520:
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	CLRF        R0 
	BTFSC       R2, 0 
	INCF        R0, 1 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _step_no+0, 0 
	XORLW       6
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_interrupt129
;SnakeGame.c,492 :: 		light=2;
	MOVLW       2
	MOVWF       _light+0 
;SnakeGame.c,493 :: 		step_no=1;
	MOVLW       1
	MOVWF       _step_no+0 
;SnakeGame.c,494 :: 		glcd_mode = 0xFF;
	MOVLW       255
	MOVWF       _glcd_mode+0 
;SnakeGame.c,495 :: 		INT0IF_bit=0;
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;SnakeGame.c,496 :: 		line_color=0;
	CLRF        _line_color+0 
;SnakeGame.c,497 :: 		line_color_inverse=1;}
	MOVLW       1
	MOVWF       _line_color_inverse+0 
L_interrupt129:
;SnakeGame.c,499 :: 		}
L_end_interrupt:
L__interrupt426:
	RETFIE      1
; end of _interrupt

_main:

;SnakeGame.c,502 :: 		void main() {
;SnakeGame.c,510 :: 		ANCON0 = 0;
	CLRF        ANCON0+0 
;SnakeGame.c,511 :: 		ANCON1 = 0;
	CLRF        ANCON1+0 
;SnakeGame.c,512 :: 		ANCON2 = 0;
	CLRF        ANCON2+0 
;SnakeGame.c,515 :: 		TRISA = 0;
	CLRF        TRISA+0 
;SnakeGame.c,516 :: 		TRISB = 0x07;
	MOVLW       7
	MOVWF       TRISB+0 
;SnakeGame.c,517 :: 		TRISC = 0xFF;
	MOVLW       255
	MOVWF       TRISC+0 
;SnakeGame.c,518 :: 		TRISD = 255;
	MOVLW       255
	MOVWF       TRISD+0 
;SnakeGame.c,519 :: 		TRISE = 0;
	CLRF        TRISE+0 
;SnakeGame.c,520 :: 		TRISG = 0;
	CLRF        TRISG+0 
;SnakeGame.c,522 :: 		PORTE = 0; //IE
	CLRF        PORTE+0 
;SnakeGame.c,524 :: 		INTEDG0_bit=0; //External Interrupt 0 Edge Select bit
	BCF         INTEDG0_bit+0, BitPos(INTEDG0_bit+0) 
;SnakeGame.c,525 :: 		INT0IF_bit=0; //INT0 interrupt Flag Bit Clear
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;SnakeGame.c,526 :: 		INT0IE_bit=1; //INT0 interrupt Enable Bit Set
	BSF         INT0IE_bit+0, BitPos(INT0IE_bit+0) 
;SnakeGame.c,527 :: 		INTEDG1_bit=0; //External Interrupt 0 Edge Select bit
	BCF         INTEDG1_bit+0, BitPos(INTEDG1_bit+0) 
;SnakeGame.c,528 :: 		INT1IF_bit=0; //INT0 interrupt Flag Bit Clear
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
;SnakeGame.c,529 :: 		INT1IE_bit=1; //INT0 interrupt Enable Bit Set
	BSF         INT1IE_bit+0, BitPos(INT1IE_bit+0) 
;SnakeGame.c,530 :: 		INTEDG2_bit=0; //External Interrupt 0 Edge Select bit
	BCF         INTEDG2_bit+0, BitPos(INTEDG2_bit+0) 
;SnakeGame.c,531 :: 		INT2IF_bit=0; //INT0 interrupt Flag Bit Clear
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
;SnakeGame.c,532 :: 		INT2IE_bit=1; //INT0 interrupt Enable Bit Set
	BSF         INT2IE_bit+0, BitPos(INT2IE_bit+0) 
;SnakeGame.c,533 :: 		GIE_bit=1; // Global Interrupt Register Set
	BSF         GIE_bit+0, BitPos(GIE_bit+0) 
;SnakeGame.c,536 :: 		LCD_Init();
	CALL        _Lcd_Init+0, 0
;SnakeGame.c,537 :: 		LCD_CMD(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,538 :: 		LCD_CMD(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,539 :: 		delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main130:
	DECFSZ      R13, 1, 1
	BRA         L_main130
	DECFSZ      R12, 1, 1
	BRA         L_main130
	NOP
	NOP
;SnakeGame.c,541 :: 		LCD_OUT(1, 5, "WELCOME");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr28_SnakeGame+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr28_SnakeGame+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;SnakeGame.c,542 :: 		LCD_OUT(2, 4, "Let's Play!");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr29_SnakeGame+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr29_SnakeGame+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;SnakeGame.c,544 :: 		delay_ms(1000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main131:
	DECFSZ      R13, 1, 1
	BRA         L_main131
	DECFSZ      R12, 1, 1
	BRA         L_main131
	DECFSZ      R11, 1, 1
	BRA         L_main131
	NOP
;SnakeGame.c,545 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,550 :: 		Glcd_Init();                // Call GLCDpinout settings
	CALL        _Glcd_Init+0, 0
;SnakeGame.c,551 :: 		Keypad_Init();              // Call keypadpinout settings
	CALL        _Keypad_Init+0, 0
;SnakeGame.c,552 :: 		Glcd_Image(katipcelebi);    //Call the created image
	MOVLW       _katipcelebi+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_katipcelebi+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_katipcelebi+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;SnakeGame.c,553 :: 		delay_ms(800);              //delay
	MOVLW       17
	MOVWF       R11, 0
	MOVLW       60
	MOVWF       R12, 0
	MOVLW       203
	MOVWF       R13, 0
L_main132:
	DECFSZ      R13, 1, 1
	BRA         L_main132
	DECFSZ      R12, 1, 1
	BRA         L_main132
	DECFSZ      R11, 1, 1
	BRA         L_main132
;SnakeGame.c,554 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;SnakeGame.c,555 :: 		Glcd_Set_Font(font5x7, 5, 7, 32);
	MOVLW       _font5x7+0
	MOVWF       FARG_Glcd_Set_Font_activeFont+0 
	MOVLW       hi_addr(_font5x7+0)
	MOVWF       FARG_Glcd_Set_Font_activeFont+1 
	MOVLW       higher_addr(_font5x7+0)
	MOVWF       FARG_Glcd_Set_Font_activeFont+2 
	MOVLW       5
	MOVWF       FARG_Glcd_Set_Font_aFontWidth+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Set_Font_aFontHeight+0 
	MOVLW       32
	MOVWF       FARG_Glcd_Set_Font_aFontOffs+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Set_Font_aFontOffs+1 
	CALL        _Glcd_Set_Font+0, 0
;SnakeGame.c,556 :: 		Glcd_Write_Text("Made by", 0, 2, 1);
	MOVLW       ?lstr30_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr30_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,557 :: 		Glcd_Set_Font(Character8x7, 8, 7, 32);
	MOVLW       _Character8x7+0
	MOVWF       FARG_Glcd_Set_Font_activeFont+0 
	MOVLW       hi_addr(_Character8x7+0)
	MOVWF       FARG_Glcd_Set_Font_activeFont+1 
	MOVLW       higher_addr(_Character8x7+0)
	MOVWF       FARG_Glcd_Set_Font_activeFont+2 
	MOVLW       8
	MOVWF       FARG_Glcd_Set_Font_aFontWidth+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Set_Font_aFontHeight+0 
	MOVLW       32
	MOVWF       FARG_Glcd_Set_Font_aFontOffs+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Set_Font_aFontOffs+1 
	CALL        _Glcd_Set_Font+0, 0
;SnakeGame.c,558 :: 		Glcd_Write_Text("IREM ERSIN", 15, 4, 1);
	MOVLW       ?lstr31_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr31_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       15
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,559 :: 		Glcd_Set_Font(font5x7, 5, 7, 32);
	MOVLW       _font5x7+0
	MOVWF       FARG_Glcd_Set_Font_activeFont+0 
	MOVLW       hi_addr(_font5x7+0)
	MOVWF       FARG_Glcd_Set_Font_activeFont+1 
	MOVLW       higher_addr(_font5x7+0)
	MOVWF       FARG_Glcd_Set_Font_activeFont+2 
	MOVLW       5
	MOVWF       FARG_Glcd_Set_Font_aFontWidth+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Set_Font_aFontHeight+0 
	MOVLW       32
	MOVWF       FARG_Glcd_Set_Font_aFontOffs+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Set_Font_aFontOffs+1 
	CALL        _Glcd_Set_Font+0, 0
;SnakeGame.c,560 :: 		Glcd_Write_Text("IKCU  EEE ", 60, 7, 1);
	MOVLW       ?lstr32_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr32_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       60
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,561 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;SnakeGame.c,562 :: 		delay_ms(800);              //delay
	MOVLW       17
	MOVWF       R11, 0
	MOVLW       60
	MOVWF       R12, 0
	MOVLW       203
	MOVWF       R13, 0
L_main133:
	DECFSZ      R13, 1, 1
	BRA         L_main133
	DECFSZ      R12, 1, 1
	BRA         L_main133
	DECFSZ      R11, 1, 1
	BRA         L_main133
;SnakeGame.c,563 :: 		Glcd_Image(snakegame);      //Call the created image
	MOVLW       _snakegame+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_snakegame+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_snakegame+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;SnakeGame.c,564 :: 		delay_ms(800);
	MOVLW       17
	MOVWF       R11, 0
	MOVLW       60
	MOVWF       R12, 0
	MOVLW       203
	MOVWF       R13, 0
L_main134:
	DECFSZ      R13, 1, 1
	BRA         L_main134
	DECFSZ      R12, 1, 1
	BRA         L_main134
	DECFSZ      R11, 1, 1
	BRA         L_main134
;SnakeGame.c,566 :: 		Back:
___main_Back:
;SnakeGame.c,567 :: 		if(t<1){t=u;}
	MOVLW       1
	SUBWF       _t+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main135
	MOVF        _u+0, 0 
	MOVWF       _t+0 
L_main135:
;SnakeGame.c,568 :: 		while(1){
L_main136:
;SnakeGame.c,569 :: 		if(menu_no==1  & step_no==1 & ingilizce==1 & light==1){
	MOVF        _menu_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main138
;SnakeGame.c,570 :: 		Glcd_Image(menu);}
	MOVLW       _menu+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_menu+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_menu+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main138:
;SnakeGame.c,571 :: 		if(menu_no==2  & step_no==1 & ingilizce==1 & light==1){
	MOVF        _menu_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main139
;SnakeGame.c,572 :: 		Glcd_Image(menu2);}
	MOVLW       _menu2+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_menu2+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_menu2+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main139:
;SnakeGame.c,573 :: 		if(menu_no==3  & step_no==1 & ingilizce==1 & light==1){
	MOVF        _menu_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main140
;SnakeGame.c,574 :: 		Glcd_Image(menu3);}
	MOVLW       _menu3+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_menu3+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_menu3+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main140:
;SnakeGame.c,575 :: 		if(menu_no==1  & step_no==1 & ingilizce==2 & light==1){
	MOVF        _menu_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main141
;SnakeGame.c,576 :: 		Glcd_Image(turkce_menu1);}
	MOVLW       _turkce_menu1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_turkce_menu1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_turkce_menu1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main141:
;SnakeGame.c,577 :: 		if(menu_no==2  & step_no==1 & ingilizce==2 & light==1){
	MOVF        _menu_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main142
;SnakeGame.c,578 :: 		Glcd_Image(turkce_menu2);}
	MOVLW       _turkce_menu2+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_turkce_menu2+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_turkce_menu2+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main142:
;SnakeGame.c,579 :: 		if(menu_no==3  & step_no==1 & ingilizce==2 & light==1){
	MOVF        _menu_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main143
;SnakeGame.c,580 :: 		Glcd_Image(turkce_menu3);}
	MOVLW       _turkce_menu3+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_turkce_menu3+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_turkce_menu3+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main143:
;SnakeGame.c,582 :: 		if(menu_no==1  & step_no==1 & ingilizce==1 & light==2){
	MOVF        _menu_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main144
;SnakeGame.c,583 :: 		Glcd_Image(menu_d);}
	MOVLW       _menu_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_menu_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_menu_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main144:
;SnakeGame.c,584 :: 		if(menu_no==2  & step_no==1 & ingilizce==1 & light==2){
	MOVF        _menu_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main145
;SnakeGame.c,585 :: 		Glcd_Image(menu2_d);}
	MOVLW       _menu2_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_menu2_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_menu2_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main145:
;SnakeGame.c,586 :: 		if(menu_no==3  & step_no==1 & ingilizce==1 & light==2){
	MOVF        _menu_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main146
;SnakeGame.c,587 :: 		Glcd_Image(menu3_d);}
	MOVLW       _menu3_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_menu3_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_menu3_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main146:
;SnakeGame.c,588 :: 		if(menu_no==1  & step_no==1 & ingilizce==2 & light==2){
	MOVF        _menu_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main147
;SnakeGame.c,589 :: 		Glcd_Image(turkce_menu1_d);}
	MOVLW       _turkce_menu1_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_turkce_menu1_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_turkce_menu1_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main147:
;SnakeGame.c,590 :: 		if(menu_no==2  & step_no==1 & ingilizce==2 & light==2){
	MOVF        _menu_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main148
;SnakeGame.c,591 :: 		Glcd_Image(turkce_menu2_d);}
	MOVLW       _turkce_menu2_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_turkce_menu2_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_turkce_menu2_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main148:
;SnakeGame.c,592 :: 		if(menu_no==3  & step_no==1 & ingilizce==2 & light==2){
	MOVF        _menu_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main149
;SnakeGame.c,593 :: 		Glcd_Image(turkce_menu3_d);}
	MOVLW       _turkce_menu3_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_turkce_menu3_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_turkce_menu3_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main149:
;SnakeGame.c,596 :: 		if(difficulty_level==1  & step_no==2 & ingilizce==1 & light==1){
	MOVF        _difficulty_level+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main150
;SnakeGame.c,597 :: 		Glcd_Image(easy);}
	MOVLW       _easy+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_easy+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_easy+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main150:
;SnakeGame.c,598 :: 		if(difficulty_level==2  & step_no==2 & ingilizce==1 & light==1){
	MOVF        _difficulty_level+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main151
;SnakeGame.c,599 :: 		Glcd_Image(medium);}
	MOVLW       _medium+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_medium+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_medium+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main151:
;SnakeGame.c,600 :: 		if(difficulty_level==3  & step_no==2 & ingilizce==1 & light==1){
	MOVF        _difficulty_level+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main152
;SnakeGame.c,601 :: 		Glcd_Image(hard);}
	MOVLW       _hard+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_hard+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_hard+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main152:
;SnakeGame.c,602 :: 		if(difficulty_level==1  & step_no==2 & ingilizce==2 & light==1){
	MOVF        _difficulty_level+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main153
;SnakeGame.c,603 :: 		Glcd_Image(kolay);}
	MOVLW       _kolay+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_kolay+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_kolay+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main153:
;SnakeGame.c,604 :: 		if(difficulty_level==2  & step_no==2 & ingilizce==2 & light==1){
	MOVF        _difficulty_level+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main154
;SnakeGame.c,605 :: 		Glcd_Image(orta);}
	MOVLW       _orta+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_orta+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_orta+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main154:
;SnakeGame.c,606 :: 		if(difficulty_level==3  & step_no==2 & ingilizce==2 & light==1){
	MOVF        _difficulty_level+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main155
;SnakeGame.c,607 :: 		Glcd_Image(zor);}
	MOVLW       _zor+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_zor+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_zor+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main155:
;SnakeGame.c,609 :: 		if(difficulty_level==1  & step_no==2 & ingilizce==1 & light==2){
	MOVF        _difficulty_level+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main156
;SnakeGame.c,610 :: 		Glcd_Image(easy_d);}
	MOVLW       _easy_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_easy_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_easy_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main156:
;SnakeGame.c,611 :: 		if(difficulty_level==2  & step_no==2 & ingilizce==1 & light==2){
	MOVF        _difficulty_level+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main157
;SnakeGame.c,612 :: 		Glcd_Image(medium_d);}
	MOVLW       _medium_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_medium_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_medium_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main157:
;SnakeGame.c,613 :: 		if(difficulty_level==3  & step_no==2 & ingilizce==1 & light==2){
	MOVF        _difficulty_level+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main158
;SnakeGame.c,614 :: 		Glcd_Image(hard_d);}
	MOVLW       _hard_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_hard_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_hard_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main158:
;SnakeGame.c,615 :: 		if(difficulty_level==1  & step_no==2 & ingilizce==2 & light==2){
	MOVF        _difficulty_level+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main159
;SnakeGame.c,616 :: 		Glcd_Image(kolay_d);}
	MOVLW       _kolay_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_kolay_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_kolay_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main159:
;SnakeGame.c,617 :: 		if(difficulty_level==2  & step_no==2 & ingilizce==2 & light==2){
	MOVF        _difficulty_level+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main160
;SnakeGame.c,618 :: 		Glcd_Image(orta_d);}
	MOVLW       _orta_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_orta_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_orta_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main160:
;SnakeGame.c,619 :: 		if(difficulty_level==3  & step_no==2 & ingilizce==2 & light==2){
	MOVF        _difficulty_level+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main161
;SnakeGame.c,620 :: 		Glcd_Image(zor_d);}
	MOVLW       _zor_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_zor_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_zor_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main161:
;SnakeGame.c,623 :: 		if(player==1  & step_no==3 & ingilizce==1 & light==1){
	MOVF        _player+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main162
;SnakeGame.c,624 :: 		Glcd_Image(onePlayer);}
	MOVLW       _onePlayer+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_onePlayer+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_onePlayer+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main162:
;SnakeGame.c,625 :: 		if(player==2  & step_no==3 & ingilizce==1 & light==1){
	MOVF        _player+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main163
;SnakeGame.c,626 :: 		Glcd_Image(twoPlayer);}
	MOVLW       _twoPlayer+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_twoPlayer+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_twoPlayer+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main163:
;SnakeGame.c,627 :: 		if(player==1  & step_no==3 & ingilizce==2 & light==1){
	MOVF        _player+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main164
;SnakeGame.c,628 :: 		Glcd_Image(birOyuncu);}
	MOVLW       _birOyuncu+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_birOyuncu+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_birOyuncu+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main164:
;SnakeGame.c,629 :: 		if(player==2  & step_no==3 & ingilizce==2 & light==1){
	MOVF        _player+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main165
;SnakeGame.c,630 :: 		Glcd_Image(ikiOyuncu);}
	MOVLW       _ikiOyuncu+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_ikiOyuncu+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_ikiOyuncu+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main165:
;SnakeGame.c,632 :: 		if(player==1  & step_no==3 & ingilizce==1 & light==2){
	MOVF        _player+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main166
;SnakeGame.c,633 :: 		Glcd_Image(onePlayer_d);}
	MOVLW       _onePlayer_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_onePlayer_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_onePlayer_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main166:
;SnakeGame.c,634 :: 		if(player==2  & step_no==3 & ingilizce==1 & light==2){
	MOVF        _player+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main167
;SnakeGame.c,635 :: 		Glcd_Image(twoPlayer_d);}
	MOVLW       _twoPlayer_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_twoPlayer_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_twoPlayer_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main167:
;SnakeGame.c,636 :: 		if(player==1  & step_no==3 & ingilizce==2 & light==2){
	MOVF        _player+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main168
;SnakeGame.c,637 :: 		Glcd_Image(birOyuncu_d);}
	MOVLW       _birOyuncu_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_birOyuncu_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_birOyuncu_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main168:
;SnakeGame.c,638 :: 		if(player==2  & step_no==3 & ingilizce==2 & light==2){
	MOVF        _player+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main169
;SnakeGame.c,639 :: 		Glcd_Image(ikiOyuncu_d);}
	MOVLW       _ikiOyuncu_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_ikiOyuncu_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_ikiOyuncu_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main169:
;SnakeGame.c,641 :: 		if(settingStep==1  & step_no==4 & ingilizce==1 & light==1){
	MOVF        _settingStep+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main170
;SnakeGame.c,642 :: 		Glcd_Image(setting1);}
	MOVLW       _setting1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_setting1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_setting1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main170:
;SnakeGame.c,643 :: 		if(settingStep==1  & step_no==4 & ingilizce==1 & light==2){
	MOVF        _settingStep+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main171
;SnakeGame.c,644 :: 		Glcd_Image(setting1_d);}
	MOVLW       _setting1_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_setting1_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_setting1_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main171:
;SnakeGame.c,645 :: 		if(settingStep==1  & step_no==4 & ingilizce==2 & light==1){
	MOVF        _settingStep+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main172
;SnakeGame.c,646 :: 		Glcd_Image(ayarlar1);}
	MOVLW       _ayarlar1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_ayarlar1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_ayarlar1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main172:
;SnakeGame.c,647 :: 		if(settingStep==1  & step_no==4 & ingilizce==2 & light==2){
	MOVF        _settingStep+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main173
;SnakeGame.c,648 :: 		Glcd_Image(ayarlar1_d);}
	MOVLW       _ayarlar1_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_ayarlar1_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_ayarlar1_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main173:
;SnakeGame.c,650 :: 		if(settingStep==2  & step_no==4 & ingilizce==1 & light==1){
	MOVF        _settingStep+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main174
;SnakeGame.c,651 :: 		Glcd_Image(setting2);}
	MOVLW       _setting2+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_setting2+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_setting2+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main174:
;SnakeGame.c,652 :: 		if(settingStep==2  & step_no==4 & ingilizce==1 & light==2){
	MOVF        _settingStep+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main175
;SnakeGame.c,653 :: 		Glcd_Image(setting2_d);}
	MOVLW       _setting2_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_setting2_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_setting2_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main175:
;SnakeGame.c,654 :: 		if(settingStep==2  & step_no==4 & ingilizce==2 & light==1){
	MOVF        _settingStep+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main176
;SnakeGame.c,655 :: 		Glcd_Image(ayarlar2);}
	MOVLW       _ayarlar2+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_ayarlar2+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_ayarlar2+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main176:
;SnakeGame.c,656 :: 		if(settingStep==2  & step_no==4 & ingilizce==2 & light==2){
	MOVF        _settingStep+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _step_no+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main177
;SnakeGame.c,657 :: 		Glcd_Image(ayarlar2_d);}
	MOVLW       _ayarlar2_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_ayarlar2_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_ayarlar2_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main177:
;SnakeGame.c,660 :: 		if(step_no==5 & ingilizce==1 & light==1){
	MOVF        _step_no+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main178
;SnakeGame.c,661 :: 		Glcd_Image(ingilizce1);}
	MOVLW       _ingilizce1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_ingilizce1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_ingilizce1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main178:
;SnakeGame.c,662 :: 		if(step_no==5 & ingilizce==2 & light==1){
	MOVF        _step_no+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main179
;SnakeGame.c,663 :: 		Glcd_Image(turkce2);}
	MOVLW       _turkce2+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_turkce2+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_turkce2+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main179:
;SnakeGame.c,664 :: 		if(step_no==5 & ingilizce==1 & light==2){
	MOVF        _step_no+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main180
;SnakeGame.c,665 :: 		Glcd_Image(ingilizce1_d);}
	MOVLW       _ingilizce1_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_ingilizce1_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_ingilizce1_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main180:
;SnakeGame.c,666 :: 		if(step_no==5 & ingilizce==2 & light==2){
	MOVF        _step_no+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main181
;SnakeGame.c,667 :: 		Glcd_Image(turkce2_d);}
	MOVLW       _turkce2_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_turkce2_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_turkce2_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main181:
;SnakeGame.c,669 :: 		if(step_no==6 & ingilizce==1 & light==1){
	MOVF        _step_no+0, 0 
	XORLW       6
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main182
;SnakeGame.c,670 :: 		Glcd_Image(light1);}
	MOVLW       _light1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_light1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_light1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main182:
;SnakeGame.c,671 :: 		if(step_no==6 & ingilizce==2 & light==1){
	MOVF        _step_no+0, 0 
	XORLW       6
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main183
;SnakeGame.c,672 :: 		Glcd_Image(isik1);}
	MOVLW       _isik1+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_isik1+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_isik1+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main183:
;SnakeGame.c,673 :: 		if(step_no==6 & ingilizce==1 & light==2){
	MOVF        _step_no+0, 0 
	XORLW       6
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _ingilizce+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main184
;SnakeGame.c,674 :: 		Glcd_Image(light2_d);}
	MOVLW       _light2_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_light2_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_light2_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main184:
;SnakeGame.c,675 :: 		if(step_no==6 & ingilizce==2 & light==2){
	MOVF        _step_no+0, 0 
	XORLW       6
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _ingilizce+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVF        _light+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main185
;SnakeGame.c,676 :: 		Glcd_Image(isik2_d);}
	MOVLW       _isik2_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_isik2_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_isik2_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
L_main185:
;SnakeGame.c,680 :: 		if(step_no==8){
	MOVF        _step_no+0, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L_main186
;SnakeGame.c,681 :: 		calculate_heart();
	CALL        _calculate_heart+0, 0
;SnakeGame.c,682 :: 		}
L_main186:
;SnakeGame.c,684 :: 		if(step_no==7){
	MOVF        _step_no+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_main187
;SnakeGame.c,685 :: 		break;}
	GOTO        L_main137
L_main187:
;SnakeGame.c,686 :: 		}
	GOTO        L_main136
L_main137:
;SnakeGame.c,691 :: 		if(player==2 && h==0 &&  t==u && light==1 && ingilizce==1){Glcd_Fill(0x00); Glcd_Image(player1_image); delay_ms(1500);}
	MOVF        _player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main190
	MOVLW       0
	XORWF       _h+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main522
	MOVLW       0
	XORWF       _h+0, 0 
L__main522:
	BTFSS       STATUS+0, 2 
	GOTO        L_main190
	MOVF        _t+0, 0 
	XORWF       _u+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main190
	MOVF        _light+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main190
	MOVF        _ingilizce+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main190
L__main406:
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
	MOVLW       _player1_image+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_player1_image+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_player1_image+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_main191:
	DECFSZ      R13, 1, 1
	BRA         L_main191
	DECFSZ      R12, 1, 1
	BRA         L_main191
	DECFSZ      R11, 1, 1
	BRA         L_main191
	NOP
L_main190:
;SnakeGame.c,692 :: 		if(player==2 && h==0 &&  t==u && light==2 && ingilizce==1){Glcd_Fill(0x00); Glcd_Image(player1_image_d); delay_ms(1500);}
	MOVF        _player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main194
	MOVLW       0
	XORWF       _h+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main523
	MOVLW       0
	XORWF       _h+0, 0 
L__main523:
	BTFSS       STATUS+0, 2 
	GOTO        L_main194
	MOVF        _t+0, 0 
	XORWF       _u+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main194
	MOVF        _light+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main194
	MOVF        _ingilizce+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main194
L__main405:
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
	MOVLW       _player1_image_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_player1_image_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_player1_image_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_main195:
	DECFSZ      R13, 1, 1
	BRA         L_main195
	DECFSZ      R12, 1, 1
	BRA         L_main195
	DECFSZ      R11, 1, 1
	BRA         L_main195
	NOP
L_main194:
;SnakeGame.c,693 :: 		if(player==2 && h==0 &&  t==u && light==1 && ingilizce==2){Glcd_Fill(0x00); Glcd_Image(oyuncu1_resim); delay_ms(1500);}
	MOVF        _player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main198
	MOVLW       0
	XORWF       _h+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main524
	MOVLW       0
	XORWF       _h+0, 0 
L__main524:
	BTFSS       STATUS+0, 2 
	GOTO        L_main198
	MOVF        _t+0, 0 
	XORWF       _u+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main198
	MOVF        _light+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main198
	MOVF        _ingilizce+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main198
L__main404:
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
	MOVLW       _oyuncu1_resim+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_oyuncu1_resim+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_oyuncu1_resim+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_main199:
	DECFSZ      R13, 1, 1
	BRA         L_main199
	DECFSZ      R12, 1, 1
	BRA         L_main199
	DECFSZ      R11, 1, 1
	BRA         L_main199
	NOP
L_main198:
;SnakeGame.c,694 :: 		if(player==2 && h==0 &&  t==u && light==2 && ingilizce==2){Glcd_Fill(0x00); Glcd_Image(oyuncu1_resim_d); delay_ms(1500);}
	MOVF        _player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main202
	MOVLW       0
	XORWF       _h+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main525
	MOVLW       0
	XORWF       _h+0, 0 
L__main525:
	BTFSS       STATUS+0, 2 
	GOTO        L_main202
	MOVF        _t+0, 0 
	XORWF       _u+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main202
	MOVF        _light+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main202
	MOVF        _ingilizce+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main202
L__main403:
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
	MOVLW       _oyuncu1_resim_d+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_oyuncu1_resim_d+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_oyuncu1_resim_d+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_main203:
	DECFSZ      R13, 1, 1
	BRA         L_main203
	DECFSZ      R12, 1, 1
	BRA         L_main203
	DECFSZ      R11, 1, 1
	BRA         L_main203
	NOP
L_main202:
;SnakeGame.c,695 :: 		Glcd_Fill(glcd_mode);            // Clears the screen
	MOVF        _glcd_mode+0, 0 
	MOVWF       FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;SnakeGame.c,698 :: 		if(ingilizce==1){Glcd_Write_Text(" LOADING ..." ,25,3,line_color);}
	MOVF        _ingilizce+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main204
	MOVLW       ?lstr33_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr33_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       25
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
L_main204:
;SnakeGame.c,699 :: 		if(ingilizce==2){Glcd_Write_Text("YUKLENIYOR ..." ,25,3,line_color);}
	MOVF        _ingilizce+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main205
	MOVLW       ?lstr34_SnakeGame+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr34_SnakeGame+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       25
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
L_main205:
;SnakeGame.c,701 :: 		Glcd_Rectangle(21,35,105,45,line_color);    //Draw rectangle between (21,35) and (105,45)
	MOVLW       21
	MOVWF       FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       35
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       105
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       45
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;SnakeGame.c,702 :: 		for(j=0;j<21;j++)
	CLRF        _j+0 
L_main206:
	MOVLW       21
	SUBWF       _j+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main207
;SnakeGame.c,704 :: 		Glcd_Box(21,35,21+(j+1)*4,45,line_color);   //Draw box between (21,35) and ((j+1)*4),45)
	MOVLW       21
	MOVWF       FARG_Glcd_Box_x_upper_left+0 
	MOVLW       35
	MOVWF       FARG_Glcd_Box_y_upper_left+0 
	MOVF        _j+0, 0 
	ADDLW       1
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       R0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	MOVF        R0, 0 
	ADDLW       21
	MOVWF       FARG_Glcd_Box_x_bottom_right+0 
	MOVLW       45
	MOVWF       FARG_Glcd_Box_y_bottom_right+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Box_color+0 
	CALL        _Glcd_Box+0, 0
;SnakeGame.c,705 :: 		delay_ms(40);
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main209:
	DECFSZ      R13, 1, 1
	BRA         L_main209
	DECFSZ      R12, 1, 1
	BRA         L_main209
	NOP
	NOP
;SnakeGame.c,702 :: 		for(j=0;j<21;j++)
	INCF        _j+0, 1 
;SnakeGame.c,706 :: 		}
	GOTO        L_main206
L_main207:
;SnakeGame.c,709 :: 		Glcd_Fill(glcd_mode);
	MOVF        _glcd_mode+0, 0 
	MOVWF       FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;SnakeGame.c,713 :: 		create_location ();
	CALL        _create_location+0, 0
;SnakeGame.c,718 :: 		Glcd_Rectangle(0,10,127,63, line_color);       //Draw rectangle between (0,10) and (127,63)
	CLRF        FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       10
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       127
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       63
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;SnakeGame.c,719 :: 		if(ingilizce==1){
	MOVF        _ingilizce+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main210
;SnakeGame.c,720 :: 		Glcd_Write_Text(score_txt,2 ,0,line_color); }   //Display “Score: 00” at x position 2 in page 0
	MOVF        _score_txt+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
L_main210:
;SnakeGame.c,721 :: 		if(ingilizce==2){
	MOVF        _ingilizce+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main211
;SnakeGame.c,722 :: 		Glcd_Write_Text(score_txt_t,2 ,0,line_color); }   //Display “Score: 00” at x position 2 in page 0
	MOVF        _score_txt_t+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt_t+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
L_main211:
;SnakeGame.c,729 :: 		kp = 0; // Reset key code variable
	CLRF        _kp+0 
;SnakeGame.c,731 :: 		do
L_main215:
;SnakeGame.c,732 :: 		if(PORTG.F1 ==1 || PORTC.F4 ==1 ){kp=1; keep=2;}
	BTFSC       PORTG+0, 1 
	GOTO        L__main402
	BTFSC       PORTC+0, 4 
	GOTO        L__main402
	GOTO        L_main220
L__main402:
	MOVLW       1
	MOVWF       _kp+0 
	MOVLW       2
	MOVWF       _keep+0 
	GOTO        L_main221
L_main220:
;SnakeGame.c,733 :: 		else{kp=0;}
	CLRF        _kp+0 
L_main221:
;SnakeGame.c,734 :: 		while (!kp);
	MOVF        _kp+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main215
;SnakeGame.c,738 :: 		while(1){
L_main222:
;SnakeGame.c,741 :: 		if( PORTG.F1==1 )
	BTFSS       PORTG+0, 1 
	GOTO        L_main224
;SnakeGame.c,743 :: 		keep = 2;
	MOVLW       2
	MOVWF       _keep+0 
;SnakeGame.c,744 :: 		}
L_main224:
;SnakeGame.c,746 :: 		if( PORTC.F4==1 )
	BTFSS       PORTC+0, 4 
	GOTO        L_main225
;SnakeGame.c,748 :: 		keep = 3;
	MOVLW       3
	MOVWF       _keep+0 
;SnakeGame.c,749 :: 		}
L_main225:
;SnakeGame.c,751 :: 		if( PORTG.F2==1 )
	BTFSS       PORTG+0, 2 
	GOTO        L_main226
;SnakeGame.c,753 :: 		keep = 1;
	MOVLW       1
	MOVWF       _keep+0 
;SnakeGame.c,754 :: 		}
L_main226:
;SnakeGame.c,756 :: 		if( PORTC.F2==1)
	BTFSS       PORTC+0, 2 
	GOTO        L_main227
;SnakeGame.c,757 :: 		{keep = 0; }
	CLRF        _keep+0 
L_main227:
;SnakeGame.c,760 :: 		if(keep==2){
	MOVF        _keep+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main228
;SnakeGame.c,761 :: 		locX++;                        //Snake goes right
	INCF        _locX+0, 1 
;SnakeGame.c,762 :: 		if(locX>=126){                 //If the snake crash the specified area
	MOVLW       126
	SUBWF       _locX+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_main229
;SnakeGame.c,764 :: 		t=t-1;
	DECF        _t+0, 1 
;SnakeGame.c,765 :: 		if(t>0){leftedHeart(); goto Back;}
	MOVF        _t+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main230
	CALL        _leftedHeart+0, 0
	GOTO        ___main_Back
L_main230:
;SnakeGame.c,767 :: 		gameOver();                    //Call gameOver function
	CALL        _gameover+0, 0
;SnakeGame.c,768 :: 		while(1){
L_main232:
;SnakeGame.c,769 :: 		if (gameOver_sit == 1){
	MOVF        _gameOver_sit+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main234
;SnakeGame.c,770 :: 		goto Back; }}                   //Go back  namely reloading
	GOTO        ___main_Back
L_main234:
	GOTO        L_main232
;SnakeGame.c,771 :: 		} }
L_main229:
;SnakeGame.c,773 :: 		Quick[snake_length - 1][0] = locX;
	DECF        _snake_length+0, 0 
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	SUBWFB      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVF        _locX+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,774 :: 		Quick[snake_length- 1][1] = locY;
	DECF        _snake_length+0, 0 
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	SUBWFB      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVF        _locY+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,775 :: 		for(i=0; i<snake_length - 1; i++){
	CLRF        _i+0 
L_main235:
	DECF        _snake_length+0, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	SUBWFB      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main526
	MOVF        R1, 0 
	SUBWF       _i+0, 0 
L__main526:
	BTFSC       STATUS+0, 0 
	GOTO        L_main236
;SnakeGame.c,776 :: 		Quick[i][0] = Quick[i+1][0];
	MOVLW       25
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        _i+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,777 :: 		Quick[i][1] = Quick[i+1][1];
	MOVLW       25
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        _i+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,775 :: 		for(i=0; i<snake_length - 1; i++){
	INCF        _i+0, 1 
;SnakeGame.c,778 :: 		}
	GOTO        L_main235
L_main236:
;SnakeGame.c,780 :: 		}
L_main228:
;SnakeGame.c,782 :: 		if(keep==3){
	MOVF        _keep+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_main238
;SnakeGame.c,783 :: 		locY++;                       //Snake  goes down
	INCF        _locY+0, 1 
;SnakeGame.c,784 :: 		if(locY>=63){                 //If the snake crash the specified area
	MOVLW       63
	SUBWF       _locY+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_main239
;SnakeGame.c,785 :: 		t=t-1;
	DECF        _t+0, 1 
;SnakeGame.c,786 :: 		if(t>0){leftedHeart(); goto Back;}
	MOVF        _t+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main240
	CALL        _leftedHeart+0, 0
	GOTO        ___main_Back
L_main240:
;SnakeGame.c,788 :: 		gameOver();                    //Call gameOver function
	CALL        _gameover+0, 0
;SnakeGame.c,789 :: 		while(1){
L_main242:
;SnakeGame.c,790 :: 		if (gameOver_sit == 1){
	MOVF        _gameOver_sit+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main244
;SnakeGame.c,791 :: 		goto Back; }}                         //Go back  namely reloading
	GOTO        ___main_Back
L_main244:
	GOTO        L_main242
;SnakeGame.c,792 :: 		}   }
L_main239:
;SnakeGame.c,794 :: 		Quick[snake_length - 1][1] = locY;
	DECF        _snake_length+0, 0 
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	SUBWFB      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVF        _locY+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,795 :: 		Quick[snake_length - 1][0] = locX;
	DECF        _snake_length+0, 0 
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	SUBWFB      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVF        _locX+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,796 :: 		for(i=0; i<snake_length - 1; i++){
	CLRF        _i+0 
L_main245:
	DECF        _snake_length+0, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	SUBWFB      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main527
	MOVF        R1, 0 
	SUBWF       _i+0, 0 
L__main527:
	BTFSC       STATUS+0, 0 
	GOTO        L_main246
;SnakeGame.c,797 :: 		Quick[i][1] = Quick[i+1][1];
	MOVLW       25
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        _i+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,798 :: 		Quick[i][0] = Quick[i+1][0];
	MOVLW       25
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        _i+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,796 :: 		for(i=0; i<snake_length - 1; i++){
	INCF        _i+0, 1 
;SnakeGame.c,799 :: 		}
	GOTO        L_main245
L_main246:
;SnakeGame.c,800 :: 		}
L_main238:
;SnakeGame.c,803 :: 		if(keep==1){
	MOVF        _keep+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main248
;SnakeGame.c,804 :: 		locY--;                          //Snake  goes up
	DECF        _locY+0, 1 
;SnakeGame.c,805 :: 		if(locY<=10){                    //If the snake crash the specified area
	MOVF        _locY+0, 0 
	SUBLW       10
	BTFSS       STATUS+0, 0 
	GOTO        L_main249
;SnakeGame.c,806 :: 		t=t-1;
	DECF        _t+0, 1 
;SnakeGame.c,807 :: 		if(t>0){leftedHeart(); goto Back;}
	MOVF        _t+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main250
	CALL        _leftedHeart+0, 0
	GOTO        ___main_Back
L_main250:
;SnakeGame.c,809 :: 		gameOver();                      //Call gameOver function
	CALL        _gameover+0, 0
;SnakeGame.c,810 :: 		while(1){
L_main252:
;SnakeGame.c,811 :: 		if (gameOver_sit == 1){
	MOVF        _gameOver_sit+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main254
;SnakeGame.c,812 :: 		goto Back; }}                          //Go back  namely reloading
	GOTO        ___main_Back
L_main254:
	GOTO        L_main252
;SnakeGame.c,813 :: 		}}
L_main249:
;SnakeGame.c,815 :: 		Quick[snake_length - 1][1] = locY;
	DECF        _snake_length+0, 0 
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	SUBWFB      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVF        _locY+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,816 :: 		Quick[snake_length - 1][0] = locX;
	DECF        _snake_length+0, 0 
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	SUBWFB      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVF        _locX+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,817 :: 		for(i=0; i<snake_length - 1; i++){
	CLRF        _i+0 
L_main255:
	DECF        _snake_length+0, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	SUBWFB      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main528
	MOVF        R1, 0 
	SUBWF       _i+0, 0 
L__main528:
	BTFSC       STATUS+0, 0 
	GOTO        L_main256
;SnakeGame.c,818 :: 		Quick[i][1] = Quick[i+1][1];
	MOVLW       25
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        _i+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,819 :: 		Quick[i][0] = Quick[i+1][0];
	MOVLW       25
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        _i+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,817 :: 		for(i=0; i<snake_length - 1; i++){
	INCF        _i+0, 1 
;SnakeGame.c,820 :: 		}
	GOTO        L_main255
L_main256:
;SnakeGame.c,821 :: 		}
L_main248:
;SnakeGame.c,824 :: 		if(keep==0){
	MOVF        _keep+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main258
;SnakeGame.c,825 :: 		locX--;                           //Snake  goes left
	DECF        _locX+0, 1 
;SnakeGame.c,826 :: 		if(locX<1){                       //If the snake crash the specified area
	MOVLW       1
	SUBWF       _locX+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main259
;SnakeGame.c,827 :: 		t=t-1;
	DECF        _t+0, 1 
;SnakeGame.c,828 :: 		if(t>0){leftedHeart(); goto Back;}
	MOVF        _t+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main260
	CALL        _leftedHeart+0, 0
	GOTO        ___main_Back
L_main260:
;SnakeGame.c,830 :: 		gameOver();                       //Call gameOver function
	CALL        _gameover+0, 0
;SnakeGame.c,831 :: 		while(1){
L_main262:
;SnakeGame.c,832 :: 		if (gameOver_sit == 1){
	MOVF        _gameOver_sit+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main264
;SnakeGame.c,833 :: 		goto Back; }}                           //Go back  namely reloading
	GOTO        ___main_Back
L_main264:
	GOTO        L_main262
;SnakeGame.c,834 :: 		}}
L_main259:
;SnakeGame.c,836 :: 		Quick[snake_length - 1][1] = locY;
	DECF        _snake_length+0, 0 
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	SUBWFB      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVF        _locY+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,837 :: 		Quick[snake_length - 1][0] = locX;
	DECF        _snake_length+0, 0 
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	SUBWFB      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVF        _locX+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,838 :: 		for(i=0; i<snake_length - 1; i++){
	CLRF        _i+0 
L_main265:
	DECF        _snake_length+0, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	SUBWFB      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main529
	MOVF        R1, 0 
	SUBWF       _i+0, 0 
L__main529:
	BTFSC       STATUS+0, 0 
	GOTO        L_main266
;SnakeGame.c,839 :: 		Quick[i][1] = Quick[i+1][1];
	MOVLW       25
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        _i+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,840 :: 		Quick[i][0] = Quick[i+1][0];
	MOVLW       25
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        _i+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVLW       25
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,838 :: 		for(i=0; i<snake_length - 1; i++){
	INCF        _i+0, 1 
;SnakeGame.c,841 :: 		}
	GOTO        L_main265
L_main266:
;SnakeGame.c,842 :: 		}
L_main258:
;SnakeGame.c,846 :: 		for(i=0;i<snake_length;i++){
	CLRF        _i+0 
L_main268:
	MOVF        _snake_length+0, 0 
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main269
;SnakeGame.c,847 :: 		Glcd_Dot(Quick[i][0], Quick[i][1], line_color);}   //The snake moves
	MOVLW       25
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        _i+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _Quick+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_Quick+0)
	ADDWFC      R1, 1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,846 :: 		for(i=0;i<snake_length;i++){
	INCF        _i+0, 1 
;SnakeGame.c,847 :: 		Glcd_Dot(Quick[i][0], Quick[i][1], line_color);}   //The snake moves
	GOTO        L_main268
L_main269:
;SnakeGame.c,848 :: 		Glcd_Dot(Quick[0][0], Quick[0][1], line_color_inverse);    //Cleans the trail when the snake moves
	MOVF        _Quick+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _Quick+1, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color_inverse+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,853 :: 		if((locX==food[0] || locX==food[0]+1) && (locY==food[1])){          //if snake find food
	MOVF        _locX+0, 0 
	XORWF       _food+0, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L__main401
	MOVF        _food+0, 0 
	ADDLW       1
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       0
	XORWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main530
	MOVF        R1, 0 
	XORWF       _locX+0, 0 
L__main530:
	BTFSC       STATUS+0, 2 
	GOTO        L__main401
	GOTO        L_main275
L__main401:
	MOVF        _locY+0, 0 
	XORWF       _food+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main275
L__main400:
;SnakeGame.c,854 :: 		findFoodSound () ;                           //call findFoodSound
	CALL        _findFoodSound+0, 0
;SnakeGame.c,855 :: 		snake_length++;                              //increase snake_length
	INCF        _snake_length+0, 1 
;SnakeGame.c,856 :: 		create_location();                           //Call create_location function
	CALL        _create_location+0, 0
;SnakeGame.c,857 :: 		score++;                                     //Increase score
	INCF        _score+0, 1 
;SnakeGame.c,861 :: 		LCD_Init();
	CALL        _Lcd_Init+0, 0
;SnakeGame.c,862 :: 		LCD_CMD(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,863 :: 		LCD_CMD(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,864 :: 		delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main276:
	DECFSZ      R13, 1, 1
	BRA         L_main276
	DECFSZ      R12, 1, 1
	BRA         L_main276
	NOP
	NOP
;SnakeGame.c,866 :: 		LCD_OUT(1, 1, "YUMMY");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr35_SnakeGame+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr35_SnakeGame+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;SnakeGame.c,867 :: 		delay_ms(1000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main277:
	DECFSZ      R13, 1, 1
	BRA         L_main277
	DECFSZ      R12, 1, 1
	BRA         L_main277
	DECFSZ      R11, 1, 1
	BRA         L_main277
	NOP
;SnakeGame.c,870 :: 		for (irem = 0; irem < 15; irem++)
	CLRF        _irem+0 
L_main278:
	MOVLW       15
	SUBWF       _irem+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main279
;SnakeGame.c,873 :: 		LCD_CMD(_LCD_SHIFT_RIGHT);
	MOVLW       28
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,874 :: 		delay_ms(200);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main281:
	DECFSZ      R13, 1, 1
	BRA         L_main281
	DECFSZ      R12, 1, 1
	BRA         L_main281
	DECFSZ      R11, 1, 1
	BRA         L_main281
;SnakeGame.c,875 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,870 :: 		for (irem = 0; irem < 15; irem++)
	INCF        _irem+0, 1 
;SnakeGame.c,876 :: 		}
	GOTO        L_main278
L_main279:
;SnakeGame.c,881 :: 		score_txt[13] = score/10 + 48;               //-0 left side
	MOVLW       13
	ADDWF       _score_txt+0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FLOC__main+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,882 :: 		score_txt[14] = score%10 + 48;               // 0- right side
	MOVLW       14
	ADDWF       _score_txt+0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FLOC__main+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,883 :: 		Glcd_Write_Text(score_txt, 2,0,line_color);           //Display “Score : ” at x position 2 in page 0
	MOVF        _score_txt+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;SnakeGame.c,886 :: 		if(score%3==0 ){
	MOVLW       3
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main282
;SnakeGame.c,887 :: 		create_bonus();                              //If score>=2 Call create_bonus function
	CALL        _create_bonus+0, 0
;SnakeGame.c,889 :: 		LCD_Init();
	CALL        _Lcd_Init+0, 0
;SnakeGame.c,890 :: 		LCD_CMD(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,891 :: 		LCD_CMD(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,892 :: 		delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main283:
	DECFSZ      R13, 1, 1
	BRA         L_main283
	DECFSZ      R12, 1, 1
	BRA         L_main283
	NOP
	NOP
;SnakeGame.c,894 :: 		LCD_OUT(1, 1, "BONUS FOOD TIME");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr36_SnakeGame+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr36_SnakeGame+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;SnakeGame.c,895 :: 		LCD_OUT(2, 1, "BE CAREFUL!");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr37_SnakeGame+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr37_SnakeGame+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;SnakeGame.c,896 :: 		delay_ms(1000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main284:
	DECFSZ      R13, 1, 1
	BRA         L_main284
	DECFSZ      R12, 1, 1
	BRA         L_main284
	DECFSZ      R11, 1, 1
	BRA         L_main284
	NOP
;SnakeGame.c,899 :: 		for (irem = 0; irem < 15; irem++)
	CLRF        _irem+0 
L_main285:
	MOVLW       15
	SUBWF       _irem+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main286
;SnakeGame.c,902 :: 		LCD_CMD(_LCD_SHIFT_RIGHT);
	MOVLW       28
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,903 :: 		delay_ms(200);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main288:
	DECFSZ      R13, 1, 1
	BRA         L_main288
	DECFSZ      R12, 1, 1
	BRA         L_main288
	DECFSZ      R11, 1, 1
	BRA         L_main288
;SnakeGame.c,904 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,899 :: 		for (irem = 0; irem < 15; irem++)
	INCF        _irem+0, 1 
;SnakeGame.c,905 :: 		}
	GOTO        L_main285
L_main286:
;SnakeGame.c,907 :: 		}
L_main282:
;SnakeGame.c,908 :: 		}
L_main275:
;SnakeGame.c,909 :: 		if (score >=3)                              //If score>=3 Call create_barrier function
	MOVLW       3
	SUBWF       _score+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_main289
;SnakeGame.c,912 :: 		create_barrier();
	CALL        _create_barrier+0, 0
;SnakeGame.c,913 :: 		LCD_Init();
	CALL        _Lcd_Init+0, 0
;SnakeGame.c,914 :: 		LCD_CMD(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,915 :: 		LCD_CMD(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,916 :: 		delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main290:
	DECFSZ      R13, 1, 1
	BRA         L_main290
	DECFSZ      R12, 1, 1
	BRA         L_main290
	NOP
	NOP
;SnakeGame.c,918 :: 		LCD_OUT(1, 1, "BONUS FOOD TIME");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr38_SnakeGame+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr38_SnakeGame+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;SnakeGame.c,919 :: 		LCD_OUT(2, 1, "BE CAREFUL!");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr39_SnakeGame+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr39_SnakeGame+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;SnakeGame.c,920 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main291:
	DECFSZ      R13, 1, 1
	BRA         L_main291
	DECFSZ      R12, 1, 1
	BRA         L_main291
	DECFSZ      R11, 1, 1
	BRA         L_main291
	NOP
	NOP
;SnakeGame.c,923 :: 		for (irem = 0; irem < 15; irem++)
	CLRF        _irem+0 
L_main292:
	MOVLW       15
	SUBWF       _irem+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main293
;SnakeGame.c,926 :: 		LCD_CMD(_LCD_SHIFT_RIGHT);
	MOVLW       28
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,927 :: 		delay_ms(200);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main295:
	DECFSZ      R13, 1, 1
	BRA         L_main295
	DECFSZ      R12, 1, 1
	BRA         L_main295
	DECFSZ      R11, 1, 1
	BRA         L_main295
;SnakeGame.c,928 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,923 :: 		for (irem = 0; irem < 15; irem++)
	INCF        _irem+0, 1 
;SnakeGame.c,929 :: 		}
	GOTO        L_main292
L_main293:
;SnakeGame.c,931 :: 		if (locX<=12 && locY==42 ){                //If crash barrier call gameOver function
	MOVF        _locX+0, 0 
	SUBLW       12
	BTFSS       STATUS+0, 0 
	GOTO        L_main298
	MOVF        _locY+0, 0 
	XORLW       42
	BTFSS       STATUS+0, 2 
	GOTO        L_main298
L__main399:
;SnakeGame.c,933 :: 		LCD_Init();
	CALL        _Lcd_Init+0, 0
;SnakeGame.c,934 :: 		LCD_CMD(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,935 :: 		LCD_CMD(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,936 :: 		delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main299:
	DECFSZ      R13, 1, 1
	BRA         L_main299
	DECFSZ      R12, 1, 1
	BRA         L_main299
	NOP
	NOP
;SnakeGame.c,938 :: 		LCD_OUT(1, 1, "YOU HIT THE WALL");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr40_SnakeGame+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr40_SnakeGame+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;SnakeGame.c,939 :: 		LCD_OUT(2, 1, "GAME OVER");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr41_SnakeGame+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr41_SnakeGame+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;SnakeGame.c,940 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main300:
	DECFSZ      R13, 1, 1
	BRA         L_main300
	DECFSZ      R12, 1, 1
	BRA         L_main300
	DECFSZ      R11, 1, 1
	BRA         L_main300
	NOP
	NOP
;SnakeGame.c,942 :: 		t=t-1;
	DECF        _t+0, 1 
;SnakeGame.c,943 :: 		if(t>0){leftedHeart(); goto Back;}
	MOVF        _t+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main301
	CALL        _leftedHeart+0, 0
	GOTO        ___main_Back
L_main301:
;SnakeGame.c,945 :: 		gameOver();                      //Call gameOver function
	CALL        _gameover+0, 0
;SnakeGame.c,946 :: 		while(1){
L_main303:
;SnakeGame.c,947 :: 		if (gameOver_sit == 1){
	MOVF        _gameOver_sit+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main305
;SnakeGame.c,948 :: 		goto Back; }}                          //Go back  namely reloading
	GOTO        ___main_Back
L_main305:
	GOTO        L_main303
;SnakeGame.c,949 :: 		}}
L_main298:
;SnakeGame.c,950 :: 		if (locX>=115 && locY==42){                //If crash barrier call gameOver function
	MOVLW       115
	SUBWF       _locX+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_main308
	MOVF        _locY+0, 0 
	XORLW       42
	BTFSS       STATUS+0, 2 
	GOTO        L_main308
L__main398:
;SnakeGame.c,951 :: 		t=t-1;
	DECF        _t+0, 1 
;SnakeGame.c,952 :: 		if(t>0){leftedHeart(); goto Back;}
	MOVF        _t+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main309
	CALL        _leftedHeart+0, 0
	GOTO        ___main_Back
L_main309:
;SnakeGame.c,954 :: 		gameOver();                      //Call gameOver function
	CALL        _gameover+0, 0
;SnakeGame.c,955 :: 		while(1){
L_main311:
;SnakeGame.c,956 :: 		if (gameOver_sit == 1){
	MOVF        _gameOver_sit+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main313
;SnakeGame.c,957 :: 		goto Back; }}                          //Go back  namely reloading
	GOTO        ___main_Back
L_main313:
	GOTO        L_main311
;SnakeGame.c,958 :: 		}}
L_main308:
;SnakeGame.c,959 :: 		}
L_main289:
;SnakeGame.c,960 :: 		if (score >=4)                             //If score>=3 Call create_barrier_2 function
	MOVLW       4
	SUBWF       _score+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_main314
;SnakeGame.c,962 :: 		create_barrier_2();
	CALL        _create_barrier_2+0, 0
;SnakeGame.c,964 :: 		LCD_Init();
	CALL        _Lcd_Init+0, 0
;SnakeGame.c,965 :: 		LCD_CMD(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,966 :: 		LCD_CMD(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,967 :: 		delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main315:
	DECFSZ      R13, 1, 1
	BRA         L_main315
	DECFSZ      R12, 1, 1
	BRA         L_main315
	NOP
	NOP
;SnakeGame.c,970 :: 		LCD_OUT(1, 1, "NICE!");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr42_SnakeGame+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr42_SnakeGame+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;SnakeGame.c,971 :: 		LCD_CMD(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,972 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main316:
	DECFSZ      R13, 1, 1
	BRA         L_main316
	DECFSZ      R12, 1, 1
	BRA         L_main316
	DECFSZ      R11, 1, 1
	BRA         L_main316
	NOP
	NOP
;SnakeGame.c,975 :: 		for (irem = 0; irem < 15; irem++)
	CLRF        _irem+0 
L_main317:
	MOVLW       15
	SUBWF       _irem+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main318
;SnakeGame.c,978 :: 		LCD_CMD(_LCD_SHIFT_RIGHT);
	MOVLW       28
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,979 :: 		delay_ms(200);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main320:
	DECFSZ      R13, 1, 1
	BRA         L_main320
	DECFSZ      R12, 1, 1
	BRA         L_main320
	DECFSZ      R11, 1, 1
	BRA         L_main320
;SnakeGame.c,980 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,975 :: 		for (irem = 0; irem < 15; irem++)
	INCF        _irem+0, 1 
;SnakeGame.c,981 :: 		}
	GOTO        L_main317
L_main318:
;SnakeGame.c,983 :: 		for (irem = 0; irem < 15; irem++)
	CLRF        _irem+0 
L_main321:
	MOVLW       15
	SUBWF       _irem+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main322
;SnakeGame.c,986 :: 		LCD_CMD(_LCD_SHIFT_LEFT);
	MOVLW       24
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,987 :: 		delay_ms(200);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main324:
	DECFSZ      R13, 1, 1
	BRA         L_main324
	DECFSZ      R12, 1, 1
	BRA         L_main324
	DECFSZ      R11, 1, 1
	BRA         L_main324
;SnakeGame.c,988 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SnakeGame.c,983 :: 		for (irem = 0; irem < 15; irem++)
	INCF        _irem+0, 1 
;SnakeGame.c,989 :: 		}
	GOTO        L_main321
L_main322:
;SnakeGame.c,991 :: 		if (locY<=18 &&locX==64) {                //If crash barrier_2 call gameOver function
	MOVF        _locY+0, 0 
	SUBLW       18
	BTFSS       STATUS+0, 0 
	GOTO        L_main327
	MOVF        _locX+0, 0 
	XORLW       64
	BTFSS       STATUS+0, 2 
	GOTO        L_main327
L__main397:
;SnakeGame.c,992 :: 		t=t-1;
	DECF        _t+0, 1 
;SnakeGame.c,993 :: 		if(t>0){leftedHeart(); goto Back;}
	MOVF        _t+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main328
	CALL        _leftedHeart+0, 0
	GOTO        ___main_Back
L_main328:
;SnakeGame.c,995 :: 		gameOver();                      //Call gameOver function
	CALL        _gameover+0, 0
;SnakeGame.c,996 :: 		while(1){
L_main330:
;SnakeGame.c,997 :: 		if (gameOver_sit == 1){
	MOVF        _gameOver_sit+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main332
;SnakeGame.c,998 :: 		goto Back; }}                          //Go back  namely reloading
	GOTO        ___main_Back
L_main332:
	GOTO        L_main330
;SnakeGame.c,999 :: 		}}
L_main327:
;SnakeGame.c,1000 :: 		if (locY>=55 && locX==64){                //If crash barrier_2 call gameOver function
	MOVLW       55
	SUBWF       _locY+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_main335
	MOVF        _locX+0, 0 
	XORLW       64
	BTFSS       STATUS+0, 2 
	GOTO        L_main335
L__main396:
;SnakeGame.c,1001 :: 		t=t-1;
	DECF        _t+0, 1 
;SnakeGame.c,1002 :: 		if(t>0){leftedHeart(); goto Back;}
	MOVF        _t+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main336
	CALL        _leftedHeart+0, 0
	GOTO        ___main_Back
L_main336:
;SnakeGame.c,1004 :: 		gameOver();                      //Call gameOver function
	CALL        _gameover+0, 0
;SnakeGame.c,1005 :: 		while(1){
L_main338:
;SnakeGame.c,1006 :: 		if (gameOver_sit == 1){
	MOVF        _gameOver_sit+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main340
;SnakeGame.c,1007 :: 		goto Back; }}                          //Go back  namely reloading
	GOTO        ___main_Back
L_main340:
	GOTO        L_main338
;SnakeGame.c,1008 :: 		}}
L_main335:
;SnakeGame.c,1009 :: 		}
L_main314:
;SnakeGame.c,1011 :: 		if (score >=5)                             //If score>=3 Call create_barrier_2 function
	MOVLW       5
	SUBWF       _score+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_main341
;SnakeGame.c,1013 :: 		create_barrier_3();
	CALL        _create_barrier_3+0, 0
;SnakeGame.c,1014 :: 		if (locY<=42 && locY>=32 &&locX==12) {                //If crash barrier_2 call gameOver function
	MOVF        _locY+0, 0 
	SUBLW       42
	BTFSS       STATUS+0, 0 
	GOTO        L_main344
	MOVLW       32
	SUBWF       _locY+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_main344
	MOVF        _locX+0, 0 
	XORLW       12
	BTFSS       STATUS+0, 2 
	GOTO        L_main344
L__main395:
;SnakeGame.c,1015 :: 		t=t-1;
	DECF        _t+0, 1 
;SnakeGame.c,1016 :: 		if(t>0){leftedHeart(); goto Back;}
	MOVF        _t+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main345
	CALL        _leftedHeart+0, 0
	GOTO        ___main_Back
L_main345:
;SnakeGame.c,1018 :: 		gameOver();                      //Call gameOver function
	CALL        _gameover+0, 0
;SnakeGame.c,1019 :: 		while(1){
L_main347:
;SnakeGame.c,1020 :: 		if (gameOver_sit == 1){
	MOVF        _gameOver_sit+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main349
;SnakeGame.c,1021 :: 		goto Back; }}                          //Go back  namely reloading
	GOTO        ___main_Back
L_main349:
	GOTO        L_main347
;SnakeGame.c,1022 :: 		}}
L_main344:
;SnakeGame.c,1023 :: 		if (locY<=36 && locY>=24 && locX==115){                //If crash barrier_2 call gameOver function
	MOVF        _locY+0, 0 
	SUBLW       36
	BTFSS       STATUS+0, 0 
	GOTO        L_main352
	MOVLW       24
	SUBWF       _locY+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_main352
	MOVF        _locX+0, 0 
	XORLW       115
	BTFSS       STATUS+0, 2 
	GOTO        L_main352
L__main394:
;SnakeGame.c,1024 :: 		t=t-1;
	DECF        _t+0, 1 
;SnakeGame.c,1025 :: 		if(t>0){leftedHeart(); goto Back;}
	MOVF        _t+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main353
	CALL        _leftedHeart+0, 0
	GOTO        ___main_Back
L_main353:
;SnakeGame.c,1027 :: 		gameOver();                      //Call gameOver function
	CALL        _gameover+0, 0
;SnakeGame.c,1028 :: 		while(1){
L_main355:
;SnakeGame.c,1029 :: 		if (gameOver_sit == 1){
	MOVF        _gameOver_sit+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main357
;SnakeGame.c,1030 :: 		goto Back; }}                          //Go back  namely reloading
	GOTO        ___main_Back
L_main357:
	GOTO        L_main355
;SnakeGame.c,1031 :: 		}}
L_main352:
;SnakeGame.c,1032 :: 		}
L_main341:
;SnakeGame.c,1034 :: 		if ((locX==bonus[0] && (locY==bonus[1]|| locY==bonus[1]+1)) ||(locX==bonus[0]+1 && (locY==bonus[1]|| locY==bonus[1]+1)))          // If snake eat food
	MOVF        _locX+0, 0 
	XORWF       _bonus+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main392
	MOVF        _locY+0, 0 
	XORWF       _bonus+1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L__main393
	MOVF        _bonus+1, 0 
	ADDLW       1
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       0
	XORWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main531
	MOVF        R1, 0 
	XORWF       _locY+0, 0 
L__main531:
	BTFSC       STATUS+0, 2 
	GOTO        L__main393
	GOTO        L__main392
L__main393:
	GOTO        L__main389
L__main392:
	MOVF        _bonus+0, 0 
	ADDLW       1
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       0
	XORWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main532
	MOVF        R1, 0 
	XORWF       _locX+0, 0 
L__main532:
	BTFSS       STATUS+0, 2 
	GOTO        L__main390
	MOVF        _locY+0, 0 
	XORWF       _bonus+1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L__main391
	MOVF        _bonus+1, 0 
	ADDLW       1
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       0
	XORWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main533
	MOVF        R1, 0 
	XORWF       _locY+0, 0 
L__main533:
	BTFSC       STATUS+0, 2 
	GOTO        L__main391
	GOTO        L__main390
L__main391:
	GOTO        L__main389
L__main390:
	GOTO        L_main368
L__main389:
;SnakeGame.c,1036 :: 		Glcd_Dot (bonus [0], bonus [1], line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
	MOVF        _bonus+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _bonus+1, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color_inverse+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,1037 :: 		Glcd_Dot (bonus [0]+1, bonus [1], line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
	MOVF        _bonus+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _bonus+1, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color_inverse+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,1038 :: 		Glcd_Dot (bonus [0]+1, bonus [1]+1, line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
	MOVF        _bonus+0, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _bonus+1, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color_inverse+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,1039 :: 		Glcd_Dot (bonus [0], bonus [1]+1, line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
	MOVF        _bonus+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _bonus+1, 0 
	ADDLW       1
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVF        _line_color_inverse+0, 0 
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;SnakeGame.c,1040 :: 		findBonusSound();                               //Call  bonusSound
	CALL        _findBonusSound+0, 0
;SnakeGame.c,1041 :: 		snake_length=snake_length+2;
	MOVLW       2
	ADDWF       _snake_length+0, 1 
;SnakeGame.c,1042 :: 		score=score+1;                                  //Score increase 2
	INCF        _score+0, 1 
;SnakeGame.c,1044 :: 		if(ingilizce==1){
	MOVF        _ingilizce+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main369
;SnakeGame.c,1045 :: 		score_txt[13] = score/10 + 48;
	MOVLW       13
	ADDWF       _score_txt+0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FLOC__main+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,1046 :: 		score_txt[14] = score%10 + 48;
	MOVLW       14
	ADDWF       _score_txt+0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       0
	ADDWFC      _score_txt+1, 0 
	MOVWF       FLOC__main+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,1047 :: 		Glcd_Write_Text(score_txt, 2,0,line_color); }
	MOVF        _score_txt+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
	GOTO        L_main370
L_main369:
;SnakeGame.c,1048 :: 		else{score_txt_t[13] = score/10 + 48;
	MOVLW       13
	ADDWF       _score_txt_t+0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       0
	ADDWFC      _score_txt_t+1, 0 
	MOVWF       FLOC__main+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,1049 :: 		score_txt_t[14] = score%10 + 48;
	MOVLW       14
	ADDWF       _score_txt_t+0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       0
	ADDWFC      _score_txt_t+1, 0 
	MOVWF       FLOC__main+1 
	MOVLW       10
	MOVWF       R4 
	MOVF        _score+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVLW       48
	ADDWF       R0, 1 
	MOVFF       FLOC__main+0, FSR1L+0
	MOVFF       FLOC__main+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;SnakeGame.c,1050 :: 		Glcd_Write_Text(score_txt_t, 2,0,line_color); }
	MOVF        _score_txt_t+0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        _score_txt_t+1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVF        _line_color+0, 0 
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
L_main370:
;SnakeGame.c,1051 :: 		}
L_main368:
;SnakeGame.c,1053 :: 		for(i=0;i<speed;i++){
	CLRF        _i+0 
L_main371:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _speed+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main534
	MOVF        _speed+0, 0 
	SUBWF       _i+0, 0 
L__main534:
	BTFSC       STATUS+0, 0 
	GOTO        L_main372
;SnakeGame.c,1054 :: 		delay_ms(25);}
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main374:
	DECFSZ      R13, 1, 1
	BRA         L_main374
	DECFSZ      R12, 1, 1
	BRA         L_main374
	NOP
	NOP
;SnakeGame.c,1053 :: 		for(i=0;i<speed;i++){
	INCF        _i+0, 1 
;SnakeGame.c,1054 :: 		delay_ms(25);}
	GOTO        L_main371
L_main372:
;SnakeGame.c,1056 :: 		}
	GOTO        L_main222
;SnakeGame.c,1059 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
