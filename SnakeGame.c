#include "image.c"                       //add image.c
char  keypadPort at PORTC;               //keypadpinout settings
//Glcd display connections
char GLCD_DataPort at PORTD;

sbit GLCD_CS1 at LATH0_bit;
sbit GLCD_CS2 at LATH1_bit;
sbit GLCD_RS  at LATH2_bit;
sbit GLCD_RW  at LATH3_bit;
sbit GLCD_EN  at LATH4_bit;
sbit GLCD_RST at LATH5_bit;

sbit GLCD_CS1_Direction at TRISH0_bit;
sbit GLCD_CS2_Direction at TRISH1_bit;
sbit GLCD_RS_Direction  at TRISH2_bit;
sbit GLCD_RW_Direction  at TRISH3_bit;
sbit GLCD_EN_Direction  at TRISH4_bit;
sbit GLCD_RST_Direction at TRISH5_bit;

//LCD Display
sbit LCD_RS at RE1_bit;
sbit LCD_EN at RE2_bit;
sbit LCD_D4 at RE3_bit;
sbit LCD_D5 at RE4_bit;
sbit LCD_D6 at RE5_bit;
sbit LCD_D7 at RE6_bit;

sbit LCD_RS_Direction at TRISE1_bit;
sbit LCD_EN_Direction at TRISE2_bit;
sbit LCD_D4_Direction  at TRISE3_bit;
sbit LCD_D5_Direction  at TRISE4_bit;
sbit LCD_D6_Direction  at TRISE5_bit;
sbit LCD_D7_Direction at TRISE6_bit;

// End LCD Display

//Determine data types,which use  variables
unsigned char food[2],bonus[2], snake_length = 7,keep=2 , Quick[55][25],locX=1, locY = 12,score,score2, *score_txt = "******Score: 00*******",i,j,menu_no=1,step_no=1,difficulty_level=1,player=1,t=1,u=1,glcd_mode=0x00,line_color=1,line_color_inverse=0;
unsigned char *score_txt1 = "Player1 Score: 00"  ,*score_txt2 = "Player2 Score: 00",*player1win = "Player1 Won",*player2win = "Player2 Won" ;
unsigned char *score_txt1_t = "Oyuncu 1 Skor: 00"  ,*score_txt2_t = "Oyuncu 2 Skor: 00",*player1win_t = "Oyuncu1 Kazandi",*player2win_t = "Oyuncu2 Kazandi",*score_txt_t = "******Skor : 00*******" ;
unsigned char ingilizce=1,settingStep=1,light=1,gameOver_sit=0,*heart_text = "  How many hearts ?",*heart1="         1",*heart2="         2",*heart3="         3",*heart_text_t = "  Kac can istiyorsun?"   ;
unsigned short kp=0;
int flag=0,x=0,speed=6,h=0,po=0;
char irem = 0; //IE

// Create random food location

void leftedHeart(){
    if (t==2 && light==1){Glcd_Image(heart2_image); delay_ms(1500);}
    if (t==1 && light==1){Glcd_Image(heart1_image); delay_ms(1500);}
    if (t==2 && light==2){Glcd_Image(heart2_image_d); delay_ms(1500);}
    if (t==1 && light==2){Glcd_Image(heart1_image_d); delay_ms(1500);}
    snake_length= 7;      // Determine snake_length
    locX = 1;locY = 12;   // Determine initially  snake location
    Glcd_Fill(glcd_mode);      // Clears the screen
    keep = 2;}

void calculate_heart(){
if(po==0){Glcd_Fill(glcd_mode); po=1;}
if(ingilizce==1){if(t==1){Glcd_Write_Text(heart_text,1,3,line_color);
   Glcd_Write_Text(heart1,1,5,line_color);}
   if(t==2){Glcd_Write_Text(heart_text,1,3,line_color);
   Glcd_Write_Text(heart2,1,5,line_color);}
   if(t==3){Glcd_Write_Text(heart_text,1,3,line_color);
   Glcd_Write_Text(heart3,1,5,line_color);}}
if(ingilizce==2){if(t==1){Glcd_Write_Text(heart_text_t,1,3,line_color);
   Glcd_Write_Text(heart1,1,5,line_color);}
   if(t==2){Glcd_Write_Text(heart_text_t,1,3,line_color);
   Glcd_Write_Text(heart2,1,5,line_color);}
   if(t==3){Glcd_Write_Text(heart_text_t,1,3,line_color);
   Glcd_Write_Text(heart3,1,5,line_color);}}

}
void create_location ()
{
Glcd_Dot (food [0], food [1], line_color_inverse);    // Place a dot at x = food[0], y = food[1]
Glcd_Dot (food [0]+1, food [1], line_color_inverse);    // Place a dot at x = food[0], y = food[1]


food [0] = rand () / 264+1 ;
food [1] = (rand () / 720)+15 ;
Glcd_Dot (food [0], food [1], line_color);    // Place a dot at x = food[0], y = food[1]
Glcd_Dot (food [0]+1, food [1], line_color);    // Place a dot at x = food[0], y = food[1]

}
// Create random bonus food location
void create_bonus ()
{
Glcd_Dot (bonus [0], bonus [1], line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
Glcd_Dot (bonus [0]+1, bonus [1], line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
Glcd_Dot (bonus [0]+1, bonus [1]+1, line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
Glcd_Dot (bonus [0], bonus [1]+1, line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
bonus [0] = rand () / 456+1 ;
bonus [1] = (rand () / 750)+15 ;
Glcd_Dot (bonus [0], bonus [1], line_color);  // Place a dot at x = bonus[0], y = bonus[1]
Glcd_Dot (bonus [0]+1, bonus [1], line_color);  // Place a dot at x = bonus[0], y = bonus[1]
Glcd_Dot (bonus [0]+1, bonus [1]+1, line_color);  // Place a dot at x = bonus[0], y = bonus[1]
Glcd_Dot (bonus [0], bonus [1]+1, line_color);  // Place a dot at x = bonus[0], y = bonus[1]
}
// Create barrier  location
void create_barrier()
{
 Glcd_Line(0,42,12,42,line_color);   //Draw a line from (0,42)to (12,42)
 Glcd_Line(127,24,115,24,line_color);    //Draw a line from (127,24)to (115,24)
}
// Create barrier 2 location
void create_barrier_2()
{
 Glcd_Line(64,10,64,18,line_color);    //Draw a line from (64,10)to (64,18)
 Glcd_Line(64,63,64,55,line_color);    //Draw a line from (64,63)to (64,55)
}

void create_barrier_3()
{
 Glcd_Line(12,42,12,32,line_color);    //Draw a line from (64,10)to (64,18)
 Glcd_Line(115,24,115,36,line_color);    //Draw a line from (64,63)to (64,55)
 }
// Create GAMEOVER sound
void gameOverSound()
{
    if(PORTC.F3==1 && PORTC.F6==0){
    Sound_Init(&PORTA, 3);
    Sound_Play(500, 100);     // Frequency = 1046Hz, duration = 100ms
    Sound_Play(100, 50);
    Sound_Play(500, 100);
    Sound_Play(100, 50);}
    if (PORTC.F6==1 && PORTC.F3==0) {
    Sound_Init(&PORTA, 3);
    Sound_Play(1000, 100);     // Frequency = 1046Hz, duration = 100ms
    Sound_Play(500, 50);
    Sound_Play(1000, 100);
    Sound_Play(500, 50);}
    if (PORTC.F6==1 && PORTC.F3==1) {
    Sound_Init(&PORTA, 3);
    Sound_Play(500, 100);     // Frequency = 1046Hz, duration = 100ms
    Sound_Play(100, 50);
    Sound_Play(500, 100);
    Sound_Play(100, 50);}

}
// Create food sound
void findFoodSound ()
{
    if (PORTC.F7==1 && PORTE.F0==0) {
    Sound_Init(&PORTA, 3);
    Sound_Play(600, 100);     // Frequency = 1046Hz, duration = 100ms
    Sound_Play(300, 50);
    Sound_Play(600, 100);
    Sound_Play(300, 50);}
    if (PORTC.F7==0 && PORTE.F0==1) {
    Sound_Init(&PORTA, 3);
    Sound_Play(1400, 100);     // Frequency = 1046Hz, duration = 100ms
    Sound_Play(800, 50);
    Sound_Play(1400, 100);
    Sound_Play(800, 50);}
    if (PORTC.F7==1 && PORTE.F0==1) {
    Sound_Init(&PORTA, 3);
    Sound_Play(600, 100);     // Frequency = 1046Hz, duration = 100ms
    Sound_Play(300, 50);
    Sound_Play(600, 100);
    Sound_Play(300, 50);}

}
// Create bonus food sound
void findBonusSound()
{
    Sound_Init(&PORTA, 3);     // Initialize the pin RA3 for playing sound
    Sound_Play(1300, 43);      // Frequency = 1300Hz, duration = 43ms
    Sound_Play(1120, 23);
    Sound_Play(1200, 43);
    Sound_Play(1320, 23);
}
void gameover(){
    gameOverSound();      // Call gameOverSound
    snake_length= 7;      // Determine snake_length
    locX = 1;locY = 12;   // Determine initially  snake location
    Glcd_Fill(0x00);      // Clears the screen
    Glcd_Image(deadsnake1);     //Call the created image
    delay_ms(200);        //Delay
    Glcd_Image(deadsnake2);     //Call the created image
    delay_ms(200);        //Delay
    Glcd_Image(deadsnake3);     //Call the created image
    delay_ms(200);        //Delay
    Glcd_Image(deadsnake4);     //Call the created image
    delay_ms(200);        //Delay
    Glcd_Image(deadsnake5);     //Call the created image
    delay_ms(200);        //Delay
    Glcd_Image(deadsnake6);     //Call the created image
    delay_ms(200);        //Delay
    Glcd_Image(deadsnake7);     //Call the created image
    delay_ms(200);        //Delay
    Glcd_Image(deadsnake8);     //Call the created image
    delay_ms(200);        //Delay
    Glcd_Fill(glcd_mode);      // Clears the screen


    if (player==1){
    if(ingilizce==1){
    score_txt[13] = score/10 + 48;
    score_txt[14] = score%10 + 48;
    Glcd_Write_Text(score_txt,1,3,line_color);
    Glcd_Write_Text("OK for playing again",1,4,line_color);
    Glcd_Write_Text("UP for back to menu",1,5,line_color);
    score = 0;score_txt[13]='0';score_txt[14] = '0';keep = 2;
    gameOver_sit = 0;}
    else{
    score_txt_t[13] = score/10 + 48;
    score_txt_t[14] = score%10 + 48;
    Glcd_Write_Text(score_txt_t,1,3,line_color);
    Glcd_Write_Text("OK : Tekrar Oyna",1,4,line_color);
    Glcd_Write_Text("Up : Menuye Don ",1,5,line_color);
    score = 0;score_txt_t[13]='0';score_txt_t[14] = '0';keep = 2;
    gameOver_sit = 0;}
     }
    else{
    h++;
    if(h==1 && t==0 && light ==1 && ingilizce ==1){
    Glcd_Fill(0x00); Glcd_Image(player2_image); delay_ms(1500);}
    if(h==1 && t==0 && light ==2 && ingilizce ==1){
    Glcd_Fill(0x00); Glcd_Image(player2_image_d); delay_ms(1500);}
    if(h==1 && t==0 && light ==1 && ingilizce ==2){
    Glcd_Fill(0x00); Glcd_Image(oyuncu2_resim); delay_ms(1500);}
    if(h==1 && t==0 && light ==2 && ingilizce ==2){
    Glcd_Fill(0x00); Glcd_Image(oyuncu2_resim_d); delay_ms(1500);}
    if (h==2){
    gameOver_sit = 0;


    if( (score2/10 + 48)*10+(score2%10 + 48) > (score/10 + 48)*10+(score%10 + 48)){
    if(ingilizce==1){
    score_txt1[15] = score2/10 + 48;
    score_txt1[16] = score2%10 + 48;
    score_txt2[15] = score/10 + 48;
    score_txt2[16] = score%10 + 48;
    Glcd_Write_Text(score_txt1,1,1,line_color);
    Glcd_Write_Text(score_txt2,1,2,line_color);
    Glcd_Write_Text(player1win,1,3,line_color);
    Glcd_Write_Text("OK for playing again",1,5,line_color);
    Glcd_Write_Text("UP for back to menu",1,6,line_color);}
    else{
    score_txt1_t[15] = score2/10 + 48;
    score_txt1_t[16] = score2%10 + 48;
    score_txt2_t[15] = score/10 + 48;
    score_txt2_t[16] = score%10 + 48;
    Glcd_Write_Text(score_txt1_t,1,1,line_color);
    Glcd_Write_Text(score_txt2_t,1,2,line_color);
    Glcd_Write_Text(player1win_t,1,3,line_color);
    Glcd_Write_Text("OK : Tekrar Oyna",1,5,line_color);
    Glcd_Write_Text("Up : Menuye Don ",1,6,line_color);}
    }
    else{
    if(ingilizce==1){
    score_txt1[15] = score2/10 + 48;
    score_txt1[16] = score2%10 + 48;
    score_txt2[15] = score/10 + 48;
    score_txt2[16] = score%10 + 48;
    Glcd_Write_Text(score_txt1,1,1,line_color);
    Glcd_Write_Text(score_txt2,1,2,line_color);
    Glcd_Write_Text(player2win,1,3,line_color);
    Glcd_Write_Text("OK for playing again",1,5,line_color);
    Glcd_Write_Text("UP for back to menu",1,6,line_color); }
    else{
    score_txt1_t[15] = score2/10 + 48;
    score_txt1_t[16] = score2%10 + 48;
    score_txt2_t[15] = score/10 + 48;
    score_txt2_t[16] = score%10 + 48;
    Glcd_Write_Text(score_txt1_t,1,1,line_color);
    Glcd_Write_Text(score_txt2_t,1,2,line_color);
    Glcd_Write_Text(player2win_t,1,3,line_color);
    Glcd_Write_Text("OK : Tekrar Oyna",1,5,line_color);
    Glcd_Write_Text("Up : Menuye Don ",1,6,1);
    }
    }
    
    }
    else{
    score2 = score;
    score = 0;score_txt[13]='0';score_txt[14] = '0';keep = 2;
    score_txt_t[13]='0';score_txt_t[14] = '0';
    gameOver_sit =1;
    }
    }
    
}
//Create interrupt
void interrupt(){
    if(INT1IF_bit==1 & menu_no==1 & step_no==1){
    menu_no=3;
    INT1IF_bit=0;}
    if(INT1IF_bit==1 & menu_no==2  & step_no==1){
    menu_no=1;
    INT1IF_bit=0;}
    if(INT1IF_bit==1 & menu_no==3  & step_no==1){
    menu_no=2;
    INT1IF_bit=0;}
    if(INT2IF_bit==1 & menu_no==1  & step_no==1){
    menu_no=2;
    INT2IF_bit=0;}
    if(INT2IF_bit==1 & menu_no==2  & step_no==1){
    menu_no=3;
    INT2IF_bit=0;}
    if(INT2IF_bit==1 & menu_no==3  & step_no==1){
    menu_no=1;
    INT2IF_bit=0;}
    
    if(INT0IF_bit==1 & menu_no==2 & step_no==1){
    menu_no=2;
    step_no=2;
    INT0IF_bit=0;}
    
    if(INT1IF_bit==1 & difficulty_level==1 & step_no==2){
    difficulty_level=3;
    INT1IF_bit=0;}
    if(INT1IF_bit==1 & difficulty_level==2  & step_no==2){
    difficulty_level=1;
    INT1IF_bit=0;}
    if(INT1IF_bit==1 & difficulty_level==3  & step_no==2){
    difficulty_level=2;
    INT1IF_bit=0;}
    if(INT2IF_bit==1 & difficulty_level==1  & step_no==2){
    difficulty_level=2;
    INT2IF_bit=0;}
    if(INT2IF_bit==1 & difficulty_level==2  & step_no==2){
    difficulty_level=3;
    INT2IF_bit=0;}
    if(INT2IF_bit==1 & difficulty_level==3  & step_no==2){
    difficulty_level=1;
    INT2IF_bit=0;}

    if(INT0IF_bit==1 & difficulty_level==1 & step_no==2){
    step_no=1;
    difficulty_level=1;
    INT0IF_bit=0;
    speed=6;}
    if(INT0IF_bit==1 & difficulty_level==2 & step_no==2){
    step_no=1;
    difficulty_level=2;
    INT0IF_bit=0;
    speed=4;}
    if(INT0IF_bit==1 & difficulty_level==3 & step_no==2){
    step_no=1;
    difficulty_level=3;
    INT0IF_bit=0;
    speed=3;}


    if(INT0IF_bit==1 & menu_no==1 & step_no==1){
    menu_no=1;
    step_no=3;
    INT0IF_bit=0;}
    
    if(INT1IF_bit==1 & player==1 & step_no==3){
    player=2;
    INT1IF_bit=0;}
    if(INT1IF_bit==1 & player==2  & step_no==3){
    player=1;
    INT1IF_bit=0;}
    if(INT2IF_bit==1 & player==2  & step_no==3){
    player=1;
    INT2IF_bit=0;}
    if(INT2IF_bit==1 & player==1  & step_no==3){
    player=2;
    INT2IF_bit=0;}
    
    if(INT0IF_bit==1 & player==1 & step_no==3){
    player=1;
    step_no=8;
    po=0;
    INT0IF_bit=0;}
    
    if(INT0IF_bit==1 & player==2 & step_no==3){
    player=2;
    step_no=8;
    po=0;
    INT0IF_bit=0;}
    
    if(INT1IF_bit==1  & step_no==8){
    if (t<3){t++;}
    else{t=3;}
    u=t;
    INT1IF_bit=0;}
    
    if(INT2IF_bit==1 & step_no==8){
    if(t>1){t--;}
    else{t=1;}
    u=t;
    INT2IF_bit=0;}
    
    if(INT0IF_bit==1 & step_no==8){
    step_no=7;
    INT0IF_bit=0;}

    
    if(INT0IF_bit==1 & step_no==7){
    step_no=7;
    gameOver_sit = 1;
    score = 0;
    score_txt[13] = score/10 + 48;
    score_txt[14] = score%10 + 48;
    score_txt_t[13] = score/10 + 48;
    score_txt_t[14] = score%10 + 48;
    INT0IF_bit=0;
    h=0;}
    
    if(INT1IF_bit==1 & step_no==7){
    step_no=1;
    menu_no=1;
    gameOver_sit = 1;
    INT0IF_bit=0;
    score = 0;
    score_txt[13] = score/10 + 48;
    score_txt[14] = score%10 + 48;
    score_txt_t[13] = score/10 + 48;
    score_txt_t[14] = score%10 + 48;
    h=0;}
    
    
    
    
    if(INT0IF_bit==1 & menu_no==3 & step_no==1){
    menu_no=3;
    step_no=4;
    INT0IF_bit=0;}
    
    if(INT1IF_bit==1 & settingStep==1 & step_no==4){
    settingStep=2;
    INT1IF_bit=0;}
    if(INT1IF_bit==1 & settingStep==2  & step_no==4){
    settingStep=1;
    INT1IF_bit=0;}
    if(INT2IF_bit==1 & settingStep==2  & step_no==4){
    settingStep=1;
    INT2IF_bit=0;}
    if(INT2IF_bit==1 & settingStep==1  & step_no==4){
    settingStep=2;
    INT2IF_bit=0;}
    
    if(INT0IF_bit==1 & settingStep==1 & step_no==4){
    settingStep=1;
    step_no=5;
    INT0IF_bit=0;}
    
    if(INT1IF_bit==1 & ingilizce==1 & step_no==5){
    ingilizce=2;
    INT1IF_bit=0;}
    if(INT1IF_bit==1 & ingilizce==2  & step_no==5){
    ingilizce=1;
    INT1IF_bit=0;}
    if(INT2IF_bit==1 & ingilizce==2  & step_no==5){
    ingilizce=1;
    INT2IF_bit=0;}
    if(INT2IF_bit==1 & ingilizce==1  & step_no==5){
    ingilizce=2;
    INT2IF_bit=0;}
    
    if(INT0IF_bit==1 & ingilizce==1 & step_no==5){
    ingilizce=1;
    step_no=1;
    INT0IF_bit=0;}
    if(INT0IF_bit==1 & ingilizce==2 & step_no==5){
    ingilizce=2;
    step_no=1;
    INT0IF_bit=0;}
    
    
    if(INT0IF_bit==1 & settingStep==2 & step_no==4){
    settingStep=1;
    step_no=6;
    INT0IF_bit=0;}

    if(INT1IF_bit==1 & light==1 & step_no==6){
    light=2;
    INT1IF_bit=0;}
    if(INT1IF_bit==1 & light==2  & step_no==6){
    light=1;
    INT1IF_bit=0;}
    if(INT2IF_bit==1 & light==2  & step_no==6){
    light=1;
    INT2IF_bit=0;}
    if(INT2IF_bit==1 & light==1  & step_no==6){
    light=2;
    INT2IF_bit=0;}
    
    if(INT0IF_bit==1 & light==1 & step_no==6){
    light=1;
    step_no=1;
    glcd_mode = 0x00;
    INT0IF_bit=0;
    line_color=1;
    line_color_inverse=0;}
    if(INT0IF_bit==1 & light==2 & step_no==6){
    light=2;
    step_no=1;
    glcd_mode = 0xFF;
    INT0IF_bit=0;
    line_color=0;
    line_color_inverse=1;}
    
}


 void main() {

  //Code Starts Here
  //ANSELA = 0;
  //ANSELB = 0;
  //ANSELC = 0;
  //ANSELD = 0;
  //ANSELE = 0;
  ANCON0 = 0;
  ANCON1 = 0;
  ANCON2 = 0;


  TRISA = 0;
  TRISB = 0x07;
  TRISC = 0xFF;
  TRISD = 255;
  TRISE = 0;
  TRISG = 0;

PORTE = 0; //IE

  INTEDG0_bit=0; //External Interrupt 0 Edge Select bit
  INT0IF_bit=0; //INT0 interrupt Flag Bit Clear
  INT0IE_bit=1; //INT0 interrupt Enable Bit Set
  INTEDG1_bit=0; //External Interrupt 0 Edge Select bit
  INT1IF_bit=0; //INT0 interrupt Flag Bit Clear
  INT1IE_bit=1; //INT0 interrupt Enable Bit Set
  INTEDG2_bit=0; //External Interrupt 0 Edge Select bit
  INT2IF_bit=0; //INT0 interrupt Flag Bit Clear
  INT2IE_bit=1; //INT0 interrupt Enable Bit Set
  GIE_bit=1; // Global Interrupt Register Set

             // LCD
    LCD_Init();
    LCD_CMD(_LCD_CURSOR_OFF);
    LCD_CMD(_LCD_CLEAR);
    delay_ms(10);

    LCD_OUT(1, 5, "WELCOME");
    LCD_OUT(2, 4, "Let's Play!");
    //LCD_OUT(2,6,"Merhaba");
    delay_ms(1000);
    Lcd_Cmd(_LCD_CLEAR);


    // LCD END

   Glcd_Init();                // Call GLCDpinout settings
   Keypad_Init();              // Call keypadpinout settings
   Glcd_Image(katipcelebi);    //Call the created image
    delay_ms(800);              //delay
    Glcd_Fill(0x00);
    Glcd_Set_Font(font5x7, 5, 7, 32);
    Glcd_Write_Text("Made by", 0, 2, 1);
    Glcd_Set_Font(Character8x7, 8, 7, 32);
    Glcd_Write_Text("IREM ERSIN", 15, 4, 1);
    Glcd_Set_Font(font5x7, 5, 7, 32);
    Glcd_Write_Text("IKCU  EEE ", 60, 7, 1);
    Glcd_Fill(0x00);
    delay_ms(800);              //delay
   Glcd_Image(snakegame);      //Call the created image
   delay_ms(800);
 
   Back:
   if(t<1){t=u;}
   while(1){
    if(menu_no==1  & step_no==1 & ingilizce==1 & light==1){
    Glcd_Image(menu);}
    if(menu_no==2  & step_no==1 & ingilizce==1 & light==1){
    Glcd_Image(menu2);}
    if(menu_no==3  & step_no==1 & ingilizce==1 & light==1){
    Glcd_Image(menu3);}
    if(menu_no==1  & step_no==1 & ingilizce==2 & light==1){
    Glcd_Image(turkce_menu1);}
    if(menu_no==2  & step_no==1 & ingilizce==2 & light==1){
    Glcd_Image(turkce_menu2);}
    if(menu_no==3  & step_no==1 & ingilizce==2 & light==1){
    Glcd_Image(turkce_menu3);}
    
    if(menu_no==1  & step_no==1 & ingilizce==1 & light==2){
    Glcd_Image(menu_d);}
    if(menu_no==2  & step_no==1 & ingilizce==1 & light==2){
    Glcd_Image(menu2_d);}
    if(menu_no==3  & step_no==1 & ingilizce==1 & light==2){
    Glcd_Image(menu3_d);}
    if(menu_no==1  & step_no==1 & ingilizce==2 & light==2){
    Glcd_Image(turkce_menu1_d);}
    if(menu_no==2  & step_no==1 & ingilizce==2 & light==2){
    Glcd_Image(turkce_menu2_d);}
    if(menu_no==3  & step_no==1 & ingilizce==2 & light==2){
    Glcd_Image(turkce_menu3_d);}


    if(difficulty_level==1  & step_no==2 & ingilizce==1 & light==1){
    Glcd_Image(easy);}
    if(difficulty_level==2  & step_no==2 & ingilizce==1 & light==1){
    Glcd_Image(medium);}
    if(difficulty_level==3  & step_no==2 & ingilizce==1 & light==1){
    Glcd_Image(hard);}
    if(difficulty_level==1  & step_no==2 & ingilizce==2 & light==1){
    Glcd_Image(kolay);}
    if(difficulty_level==2  & step_no==2 & ingilizce==2 & light==1){
    Glcd_Image(orta);}
    if(difficulty_level==3  & step_no==2 & ingilizce==2 & light==1){
    Glcd_Image(zor);}
    
    if(difficulty_level==1  & step_no==2 & ingilizce==1 & light==2){
    Glcd_Image(easy_d);}
    if(difficulty_level==2  & step_no==2 & ingilizce==1 & light==2){
    Glcd_Image(medium_d);}
    if(difficulty_level==3  & step_no==2 & ingilizce==1 & light==2){
    Glcd_Image(hard_d);}
    if(difficulty_level==1  & step_no==2 & ingilizce==2 & light==2){
    Glcd_Image(kolay_d);}
    if(difficulty_level==2  & step_no==2 & ingilizce==2 & light==2){
    Glcd_Image(orta_d);}
    if(difficulty_level==3  & step_no==2 & ingilizce==2 & light==2){
    Glcd_Image(zor_d);}


    if(player==1  & step_no==3 & ingilizce==1 & light==1){
    Glcd_Image(onePlayer);}
    if(player==2  & step_no==3 & ingilizce==1 & light==1){
    Glcd_Image(twoPlayer);}
    if(player==1  & step_no==3 & ingilizce==2 & light==1){
    Glcd_Image(birOyuncu);}
    if(player==2  & step_no==3 & ingilizce==2 & light==1){
    Glcd_Image(ikiOyuncu);}
    
    if(player==1  & step_no==3 & ingilizce==1 & light==2){
    Glcd_Image(onePlayer_d);}
    if(player==2  & step_no==3 & ingilizce==1 & light==2){
    Glcd_Image(twoPlayer_d);}
    if(player==1  & step_no==3 & ingilizce==2 & light==2){
    Glcd_Image(birOyuncu_d);}
    if(player==2  & step_no==3 & ingilizce==2 & light==2){
    Glcd_Image(ikiOyuncu_d);}
    
    if(settingStep==1  & step_no==4 & ingilizce==1 & light==1){
    Glcd_Image(setting1);}
    if(settingStep==1  & step_no==4 & ingilizce==1 & light==2){
    Glcd_Image(setting1_d);}
    if(settingStep==1  & step_no==4 & ingilizce==2 & light==1){
    Glcd_Image(ayarlar1);}
    if(settingStep==1  & step_no==4 & ingilizce==2 & light==2){
    Glcd_Image(ayarlar1_d);}
    
    if(settingStep==2  & step_no==4 & ingilizce==1 & light==1){
    Glcd_Image(setting2);}
    if(settingStep==2  & step_no==4 & ingilizce==1 & light==2){
    Glcd_Image(setting2_d);}
    if(settingStep==2  & step_no==4 & ingilizce==2 & light==1){
    Glcd_Image(ayarlar2);}
    if(settingStep==2  & step_no==4 & ingilizce==2 & light==2){
    Glcd_Image(ayarlar2_d);}
    
    
    if(step_no==5 & ingilizce==1 & light==1){
    Glcd_Image(ingilizce1);}
    if(step_no==5 & ingilizce==2 & light==1){
    Glcd_Image(turkce2);}
    if(step_no==5 & ingilizce==1 & light==2){
    Glcd_Image(ingilizce1_d);}
    if(step_no==5 & ingilizce==2 & light==2){
    Glcd_Image(turkce2_d);}
    
    if(step_no==6 & ingilizce==1 & light==1){
    Glcd_Image(light1);}
    if(step_no==6 & ingilizce==2 & light==1){
    Glcd_Image(isik1);}
    if(step_no==6 & ingilizce==1 & light==2){
    Glcd_Image(light2_d);}
    if(step_no==6 & ingilizce==2 & light==2){
    Glcd_Image(isik2_d);}
    


   if(step_no==8){
       calculate_heart();
   }

   if(step_no==7){
   break;}
   }
   



   if(player==2 && h==0 &&  t==u && light==1 && ingilizce==1){Glcd_Fill(0x00); Glcd_Image(player1_image); delay_ms(1500);}
   if(player==2 && h==0 &&  t==u && light==2 && ingilizce==1){Glcd_Fill(0x00); Glcd_Image(player1_image_d); delay_ms(1500);}
   if(player==2 && h==0 &&  t==u && light==1 && ingilizce==2){Glcd_Fill(0x00); Glcd_Image(oyuncu1_resim); delay_ms(1500);}
   if(player==2 && h==0 &&  t==u && light==2 && ingilizce==2){Glcd_Fill(0x00); Glcd_Image(oyuncu1_resim_d); delay_ms(1500);}
   Glcd_Fill(glcd_mode);            // Clears the screen

//Create LOADING Animation
  if(ingilizce==1){Glcd_Write_Text(" LOADING ..." ,25,3,line_color);}
  if(ingilizce==2){Glcd_Write_Text("YUKLENIYOR ..." ,25,3,line_color);}

  Glcd_Rectangle(21,35,105,45,line_color);    //Draw rectangle between (21,35) and (105,45)
   for(j=0;j<21;j++)
    {
   Glcd_Box(21,35,21+(j+1)*4,45,line_color);   //Draw box between (21,35) and ((j+1)*4),45)
   delay_ms(40);
   }


   Glcd_Fill(glcd_mode);



 create_location ();
 // for(i=0;i<5;i++){
 // Glcd_Dot(i,0,1);
 //}

 Glcd_Rectangle(0,10,127,63, line_color);       //Draw rectangle between (0,10) and (127,63)
 if(ingilizce==1){
 Glcd_Write_Text(score_txt,2 ,0,line_color); }   //Display “Score: 00” at x position 2 in page 0
 if(ingilizce==2){
  Glcd_Write_Text(score_txt_t,2 ,0,line_color); }   //Display “Score: 00” at x position 2 in page 0


   //Keypad
   do
  {

    kp = 0; // Reset key code variable
    // Wait for key to be pressed and released
    do
      if(PORTG.F1 ==1 || PORTC.F4 ==1 ){kp=1; keep=2;}
      else{kp=0;}
    while (!kp);
    // Prepare value for output, transform key to it's ASCII value


      while(1){

    //RIGHT
  if( PORTG.F1==1 )
  {
  keep = 2;
  }
  //DOWN
  if( PORTC.F4==1 )
  {
    keep = 3;
    }
     //UP
  if( PORTG.F2==1 )
  {
  keep = 1;
  }
  //LEFT
  if( PORTC.F2==1)
  {keep = 0; }

     //RIGHT
  if(keep==2){
   locX++;                        //Snake goes right
   if(locX>=126){                 //If the snake crash the specified area

   t=t-1;
    if(t>0){leftedHeart(); goto Back;}
    else{
   gameOver();                    //Call gameOver function
    while(1){
    if (gameOver_sit == 1){
    goto Back; }}                   //Go back  namely reloading
    } }
    //For the snake to go to the right
   Quick[snake_length - 1][0] = locX;
   Quick[snake_length- 1][1] = locY;
   for(i=0; i<snake_length - 1; i++){
     Quick[i][0] = Quick[i+1][0];
     Quick[i][1] = Quick[i+1][1];
     }

     }
   //DOWN
   if(keep==3){
   locY++;                       //Snake  goes down
   if(locY>=63){                 //If the snake crash the specified area
   t=t-1;
    if(t>0){leftedHeart(); goto Back;}
    else{
   gameOver();                    //Call gameOver function
   while(1){
    if (gameOver_sit == 1){
    goto Back; }}                         //Go back  namely reloading
   }   }
    //For the snake to go to the down
   Quick[snake_length - 1][1] = locY;
   Quick[snake_length - 1][0] = locX;
   for(i=0; i<snake_length - 1; i++){
     Quick[i][1] = Quick[i+1][1];
     Quick[i][0] = Quick[i+1][0];
     }
  }

  //UP
  if(keep==1){
   locY--;                          //Snake  goes up
   if(locY<=10){                    //If the snake crash the specified area
   t=t-1;
    if(t>0){leftedHeart(); goto Back;}
    else{
   gameOver();                      //Call gameOver function
   while(1){
    if (gameOver_sit == 1){
    goto Back; }}                          //Go back  namely reloading
   }}
   //For the snake to go to the up
   Quick[snake_length - 1][1] = locY;
   Quick[snake_length - 1][0] = locX;
   for(i=0; i<snake_length - 1; i++){
     Quick[i][1] = Quick[i+1][1];
     Quick[i][0] = Quick[i+1][0];
   }
  }

  //Left
  if(keep==0){
   locX--;                           //Snake  goes left
   if(locX<1){                       //If the snake crash the specified area
   t=t-1;
    if(t>0){leftedHeart(); goto Back;}
    else{
   gameOver();                       //Call gameOver function
   while(1){
    if (gameOver_sit == 1){
    goto Back; }}                           //Go back  namely reloading
   }}
    //For the snake to go to the left
   Quick[snake_length - 1][1] = locY;
   Quick[snake_length - 1][0] = locX;
   for(i=0; i<snake_length - 1; i++){
     Quick[i][1] = Quick[i+1][1];
     Quick[i][0] = Quick[i+1][0];
   }
  }


  // Draw the snake
   for(i=0;i<snake_length;i++){
   Glcd_Dot(Quick[i][0], Quick[i][1], line_color);}   //The snake moves
   Glcd_Dot(Quick[0][0], Quick[0][1], line_color_inverse);    //Cleans the trail when the snake moves



  //Find Food
  if((locX==food[0] || locX==food[0]+1) && (locY==food[1])){          //if snake find food
   findFoodSound () ;                           //call findFoodSound
   snake_length++;                              //increase snake_length
   create_location();                           //Call create_location function
   score++;                                     //Increase score
   
   // LCD IE

                    LCD_Init();
                    LCD_CMD(_LCD_CURSOR_OFF);
                    LCD_CMD(_LCD_CLEAR);
                    delay_ms(10);

                    LCD_OUT(1, 1, "YUMMY");
                    delay_ms(1000);


                    for (irem = 0; irem < 15; irem++)
                    {

                        LCD_CMD(_LCD_SHIFT_RIGHT);
                        delay_ms(200);
                        Lcd_Cmd(_LCD_CLEAR);
                    }

                    // LCD IE END
                    
    //Calculate score : -0 0-
   score_txt[13] = score/10 + 48;               //-0 left side
   score_txt[14] = score%10 + 48;               // 0- right side
   Glcd_Write_Text(score_txt, 2,0,line_color);           //Display “Score : ” at x position 2 in page 0


   if(score%3==0 ){
   create_bonus();                              //If score>=2 Call create_bonus function
   
    LCD_Init();
                        LCD_CMD(_LCD_CURSOR_OFF);
                        LCD_CMD(_LCD_CLEAR);
                        delay_ms(10);

                        LCD_OUT(1, 1, "BONUS FOOD TIME");
                        LCD_OUT(2, 1, "BE CAREFUL!");
                        delay_ms(1000);


                        for (irem = 0; irem < 15; irem++)
                        {

                            LCD_CMD(_LCD_SHIFT_RIGHT);
                            delay_ms(200);
                            Lcd_Cmd(_LCD_CLEAR);
                        }
                        
    }
   }
    if (score >=3)                              //If score>=3 Call create_barrier function
    {

     create_barrier();
      LCD_Init();
                        LCD_CMD(_LCD_CURSOR_OFF);
                        LCD_CMD(_LCD_CLEAR);
                        delay_ms(10);

                        LCD_OUT(1, 1, "BONUS FOOD TIME");
                        LCD_OUT(2, 1, "BE CAREFUL!");
                        delay_ms(500);


                        for (irem = 0; irem < 15; irem++)
                        {

                            LCD_CMD(_LCD_SHIFT_RIGHT);
                            delay_ms(200);
                            Lcd_Cmd(_LCD_CLEAR);
                        }

    if (locX<=12 && locY==42 ){                //If crash barrier call gameOver function
    
    LCD_Init();
                        LCD_CMD(_LCD_CURSOR_OFF);
                        LCD_CMD(_LCD_CLEAR);
                        delay_ms(10);

                        LCD_OUT(1, 1, "YOU HIT THE WALL");
                        LCD_OUT(2, 1, "GAME OVER");
                        delay_ms(500);
                        
    t=t-1;
    if(t>0){leftedHeart(); goto Back;}
    else{
   gameOver();                      //Call gameOver function
   while(1){
    if (gameOver_sit == 1){
    goto Back; }}                          //Go back  namely reloading
   }}
    if (locX>=115 && locY==42){                //If crash barrier call gameOver function
    t=t-1;
    if(t>0){leftedHeart(); goto Back;}
    else{
   gameOver();                      //Call gameOver function
   while(1){
    if (gameOver_sit == 1){
    goto Back; }}                          //Go back  namely reloading
   }}
   }
    if (score >=4)                             //If score>=3 Call create_barrier_2 function
    {
     create_barrier_2();
     
     LCD_Init();
                    LCD_CMD(_LCD_CURSOR_OFF);
                    LCD_CMD(_LCD_CLEAR);
                    delay_ms(10);


                    LCD_OUT(1, 1, "NICE!");
                    LCD_CMD(_LCD_CLEAR);
                    delay_ms(500);


                    for (irem = 0; irem < 15; irem++)
                    {

                        LCD_CMD(_LCD_SHIFT_RIGHT);
                        delay_ms(200);
                        Lcd_Cmd(_LCD_CLEAR);
                    }

                    for (irem = 0; irem < 15; irem++)
                    {

                        LCD_CMD(_LCD_SHIFT_LEFT);
                        delay_ms(200);
                        Lcd_Cmd(_LCD_CLEAR);
                    }
                    
     if (locY<=18 &&locX==64) {                //If crash barrier_2 call gameOver function
     t=t-1;
    if(t>0){leftedHeart(); goto Back;}
    else{
   gameOver();                      //Call gameOver function
   while(1){
    if (gameOver_sit == 1){
    goto Back; }}                          //Go back  namely reloading
   }}
     if (locY>=55 && locX==64){                //If crash barrier_2 call gameOver function
     t=t-1;
    if(t>0){leftedHeart(); goto Back;}
    else{
   gameOver();                      //Call gameOver function
   while(1){
    if (gameOver_sit == 1){
    goto Back; }}                          //Go back  namely reloading
   }}
    }
    
    if (score >=5)                             //If score>=3 Call create_barrier_2 function
    {
     create_barrier_3();
     if (locY<=42 && locY>=32 &&locX==12) {                //If crash barrier_2 call gameOver function
     t=t-1;
    if(t>0){leftedHeart(); goto Back;}
    else{
   gameOver();                      //Call gameOver function
   while(1){
    if (gameOver_sit == 1){
    goto Back; }}                          //Go back  namely reloading
   }}
     if (locY<=36 && locY>=24 && locX==115){                //If crash barrier_2 call gameOver function
     t=t-1;
    if(t>0){leftedHeart(); goto Back;}
    else{
   gameOver();                      //Call gameOver function
   while(1){
    if (gameOver_sit == 1){
    goto Back; }}                          //Go back  namely reloading
   }}
    }
     //Find Bonus
    if ((locX==bonus[0] && (locY==bonus[1]|| locY==bonus[1]+1)) ||(locX==bonus[0]+1 && (locY==bonus[1]|| locY==bonus[1]+1)))          // If snake eat food
   {
   Glcd_Dot (bonus [0], bonus [1], line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
   Glcd_Dot (bonus [0]+1, bonus [1], line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
   Glcd_Dot (bonus [0]+1, bonus [1]+1, line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
   Glcd_Dot (bonus [0], bonus [1]+1, line_color_inverse);  // Place a dot at x = bonus[0], y = bonus[1]
   findBonusSound();                               //Call  bonusSound
   snake_length=snake_length+2;
   score=score+1;                                  //Score increase 2

   if(ingilizce==1){
   score_txt[13] = score/10 + 48;
   score_txt[14] = score%10 + 48;
   Glcd_Write_Text(score_txt, 2,0,line_color); }
   else{score_txt_t[13] = score/10 + 48;
   score_txt_t[14] = score%10 + 48;
   Glcd_Write_Text(score_txt_t, 2,0,line_color); }
   }

   for(i=0;i<speed;i++){
   delay_ms(25);}

    }
   }while(1);

  }