FasdUAS 1.101.10   ��   ��    k             l      ��  ��   E?
File: OFList.scpt
Revision: 1.0
Revised: 2015-07-07
Author: Matt Spear

Summary: Create taskpaper list of flagged tasks

-----------------------------------------------------------

Script based on Jason Verly's OmniFocus_Due_List.scpt:
http://mygeekdaddy.net/2015/07/03/getting-my-daily-to-do-list-out-of-omnifocus/

     � 	 	~ 
 F i l e :   O F L i s t . s c p t 
 R e v i s i o n :   1 . 0 
 R e v i s e d :   2 0 1 5 - 0 7 - 0 7 
 A u t h o r :   M a t t   S p e a r 
 
 S u m m a r y :   C r e a t e   t a s k p a p e r   l i s t   o f   f l a g g e d   t a s k s 
 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
 S c r i p t   b a s e d   o n   J a s o n   V e r l y ' s   O m n i F o c u s _ D u e _ L i s t . s c p t : 
 h t t p : / / m y g e e k d a d d y . n e t / 2 0 1 5 / 0 7 / 0 3 / g e t t i n g - m y - d a i l y - t o - d o - l i s t - o u t - o f - o m n i f o c u s / 
 
   
  
 l     ��������  ��  ��        l     ��  ��     Set Date Functions     �   $ S e t   D a t e   F u n c t i o n s      l     ����  r         4     �� 
�� 
ldt   l   
 ����  n    
    1    	��
�� 
shdt  l    ����  I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��    o      ���� 0 currdate CurrDate��  ��        l    ����  r        n       !   1    ��
�� 
shdt ! 4    �� "
�� 
ldt  " l    #���� # n     $ % $ 1    ��
�� 
shdt % l    &���� & I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��    o      ���� 0 currdatetxt CurrDatetxt��  ��     ' ( ' l     ��������  ��  ��   (  ) * ) l   ) +���� + r    ) , - , [    ' . / . l   # 0���� 0 I   #������
�� .misccurdldt    ��� null��  ��  ��  ��   / l  # & 1���� 1 ]   # & 2 3 2 m   # $����  3 1   $ %��
�� 
days��  ��   - o      ���� 0 enddate endDate��  ��   *  4 5 4 l  * 3 6���� 6 r   * 3 7 8 7 4   * 1�� 9
�� 
ldt  9 l  , 0 :���� : n   , 0 ; < ; 1   - /��
�� 
shdt < l  , - =���� = o   , -���� 0 enddate endDate��  ��  ��  ��   8 o      ���� 0 
enddatetxt 
endDatetxt��  ��   5  > ? > l     ��������  ��  ��   ?  @ A @ l  4 ? B���� B r   4 ? C D C c   4 = E F E n   4 ; G H G 1   9 ;��
�� 
year H l  4 9 I���� I I  4 9������
�� .misccurdldt    ��� null��  ��  ��  ��   F m   ; <��
�� 
long D o      ���� 0 dateyeartxt dateYeartxt��  ��   A  J K J l  @ K L���� L r   @ K M N M c   @ I O P O n   @ G Q R Q m   E G��
�� 
mnth R l  @ E S���� S I  @ E������
�� .misccurdldt    ��� null��  ��  ��  ��   P m   G H��
�� 
long N o      ���� 0 datemonthtxt dateMonthtxt��  ��   K  T U T l  L W V���� V r   L W W X W c   L U Y Z Y n   L S [ \ [ 1   Q S��
�� 
day  \ l  L Q ]���� ] I  L Q������
�� .misccurdldt    ��� null��  ��  ��  ��   Z m   S T��
�� 
long X o      ���� 0 
datedaytxt 
dateDaytxt��  ��   U  ^ _ ^ l     ��������  ��  ��   _  ` a ` l  X k b���� b Z   X k c d���� c A   X ] e f e o   X Y���� 0 datemonthtxt dateMonthtxt f m   Y \���� 
 d r   ` g g h g b   ` e i j i m   ` c k k � l l  0 j o   c d���� 0 datemonthtxt dateMonthtxt h o      ���� 0 datemonthtxt dateMonthtxt��  ��  ��  ��   a  m n m l     ��������  ��  ��   n  o p o l  l  q���� q Z   l  r s���� r A   l q t u t o   l m���� 0 
datedaytxt 
dateDaytxt u m   m p���� 
 s r   t { v w v b   t y x y x m   t w z z � { {  0 y o   w x���� 0 
datedaytxt 
dateDaytxt w o      ���� 0 
datedaytxt 
dateDaytxt��  ��  ��  ��   p  | } | l     ��������  ��  ��   }  ~  ~ l  � � ����� � Q   � � � � � � k   � � � �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � # Set File/Path name of MD file    � � � � : S e t   F i l e / P a t h   n a m e   o f   M D   f i l e �  � � � r   � � � � � I  � ����� �
�� .sysonwflfile    ��� null��   � �� ���
�� 
dfnm � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  T o   D o   L i s t   f o r   � o   � ����� 0 dateyeartxt dateYeartxt � m   � � � � � � �  - � o   � ����� 0 datemonthtxt dateMonthtxt � m   � � � � � � �  - � o   � ����� 0 
datedaytxt 
dateDaytxt � m   � � � � � � �  . m d��   � o      ���� 0 thefilepath theFilePath �  � � � l  � ���~�}�  �~  �}   �  � � � l  � ��| � ��|   �  Get OmniFocus task list    � � � � . G e t   O m n i F o c u s   t a s k   l i s t �  � � � r   � � � � � n  � � � � � I   � ��{�z�y�{ *0 omnifocus_task_list OmniFocus_task_list�z  �y   �  f   � � � o      �x�x 0 	due_tasks 	due_Tasks �  ��w � l  � ��v�u�t�v  �u  �t  �w   � R      �s�r �
�s .ascrerr ****      � ****�r   � �q ��p
�q 
errn � d       � � m      �o�o ��p   � k   � � � �  � � � l  � ��n�m�l�n  �m  �l   �  � � � l  � ��k � ��k   �   do nothing    � � � �    d o   n o t h i n g �  � � � L   � ��j�j   �  ��i � l  � ��h�g�f�h  �g  �f  �i  ��  ��     � � � l     �e�d�c�e  �d  �c   �  � � � l     �b � ��b   �  Output .MD text file    � � � � ( O u t p u t   . M D   t e x t   f i l e �  � � � l  � � ��a�` � n  � � � � � I   � ��_ ��^�_ 0 
write_file 
write_File �  � � � o   � ��]�] 0 thefilepath theFilePath �  ��\ � o   � ��[�[ 0 	due_tasks 	due_Tasks�\  �^   �  f   � ��a  �`   �  � � � l     �Z�Y�X�Z  �Y  �X   �  � � � l     �W � ��W   � ! Set OmniFocus Due Task List    � � � � 6 S e t   O m n i F o c u s   D u e   T a s k   L i s t �  � � � i      � � � I      �V�U�T�V *0 omnifocus_task_list OmniFocus_task_list�U  �T   � k     � �  � � � r      � � � n      � � � 1    �S
�S 
shdt � 4     �R �
�R 
ldt  � l   
 ��Q�P � n    
 � � � 1    	�O
�O 
shdt � l    ��N�M � I   �L�K�J
�L .misccurdldt    ��� null�K  �J  �N  �M  �Q  �P   � o      �I�I 0 currdatetxt CurrDatetxt �  � � � O    � � � O    � � � k    � �  � � � l   �H�G�F�H  �G  �F   �  � � � r    O � � � N    M � � l   L ��E�D � 6  L � � � 2   !�C
�C 
FCft � l  " K ��B�A � F   " K � � � F   # 4 � � � =  $ + �  � 1   % '�@
�@ 
FCfl  m   ( *�?
�? boovtrue � =  , 3 1   - /�>
�> 
FCcd m   0 2�=
�= boovfals � l  5 J�<�; G   5 J A   6 A 1   7 9�:
�: 
FCDs l  : @�9�8 I  : @�7�6�5
�7 .misccurdldt    ��� null�6  �5  �9  �8   =  B I	
	 1   C E�4
�4 
FCDs
 m   F H�3
�3 
msng�<  �;  �B  �A  �E  �D   � o      �2�2  0 refduetasklist refDueTaskList �  l  P P�1�0�/�1  �0  �/    r   P � n   P d J   Q d  1   R T�.
�. 
pnam  n   V Z 1   X Z�-
�- 
pnam n  V X m   V X�,
�, 
FCct  g   V V �+ n   \ ` 1   ^ `�*
�* 
pnam n  \ ^  1   \ ^�)
�) 
FCPr   g   \ \�+   o   P Q�(�(  0 refduetasklist refDueTaskList J      !! "#" o      �'�' 0 lstname lstName# $%$ o      �&�& 0 
lstcontext 
lstContext% &�%& o      �$�$ 0 
lstproject 
lstProject�%   '(' l  � ��#�"�!�#  �"  �!  ( )*) r   � �+,+ b   � �-.- b   � �/0/ b   � �121 b   � �343 m   � �55 �66  T o   D o   L i s t   f o r  4 o   � �� �  0 currdatetxt CurrDatetxt2 m   � �77 �88  :0 o   � ��
� 
ret . o   � ��
� 
ret , o      �� 0 strtext strText* 9:9 l  � �����  �  �  : ;<; Y   �=�>?�= k   �@@ ABA r   � �CDC J   � �EE FGF n   � �HIH 4   � ��J
� 
cobjJ o   � ��� 0 itask iTaskI o   � ��� 0 lstname lstNameG KLK n   � �MNM 4   � ��O
� 
cobjO o   � ��� 0 itask iTaskN o   � ��� 0 
lstcontext 
lstContextL P�P n   � �QRQ 4   � ��S
� 
cobjS o   � ��� 0 itask iTaskR o   � ��� 0 
lstproject 
lstProject�  D J      TT UVU o      �� 0 strname strNameV WXW o      �� 0 
varcontext 
varContextX Y�Y o      �
�
 0 
varproject 
varProject�  B Z[Z r   � �\]\ b   � �^_^ b   � �`a` o   � ��	�	 0 strtext strTexta m   � �bb �cc %�  _ o   � ��� 0 strname strName] o      �� 0 strtext strText[ ded Z  � �fg��f >  � �hih o   � ��� 0 
varcontext 
varContexti m   � ��
� 
msngg r   � �jkj b   � �lml b   � �non o   � ��� 0 strtext strTexto m   � �pp �qq    @m o   � ��� 0 
varcontext 
varContextk o      � �  0 strtext strText�  �  e rsr Z  �	tu����t >  � �vwv o   � ����� 0 
varproject 
varProjectw m   � ���
�� 
msngu r   �xyx b   �z{z b   � �|}| b   � �~~ o   � ����� 0 strtext strText m   � ��� ���    (} o   � ����� 0 
varproject 
varProject{ m   ��� ���  )y o      ���� 0 strtext strText��  ��  s ���� r  
��� b  
��� o  
���� 0 strtext strText� o  ��
�� 
ret � o      ���� 0 strtext strText��  � 0 itask iTask> m   � ����� ? I  � ������
�� .corecnte****       ****� o   � ����� 0 lstname lstName��  �  < ���� l ��������  ��  ��  ��   � 1    ��
�� 
FCDo � 5    �����
�� 
capp� m    �� ��� 0 c o m . o m n i g r o u p . O m n i F o c u s 2
�� kfrmID   � ���� o  ���� 0 strtext strText��   � ��� l     ��������  ��  ��  � ��� l     ������  � " Export Task list to .MD file   � ��� 8 E x p o r t   T a s k   l i s t   t o   . M D   f i l e� ���� i    ��� I      ������� 0 
write_file 
write_File� ��� o      ���� 0 thefilepath theFilePath� ���� o      ���� 0 	due_tasks 	due_Tasks��  ��  � k     �� ��� r     ��� o     ���� 0 	due_tasks 	due_Tasks� o      ���� 0 thetext theText� ��� r    ��� I   ����
�� .rdwropenshor       file� o    ���� 0 thefilepath theFilePath� �����
�� 
perm� m    ��
�� boovtrue��  � o      ���� $0 thefilereference theFileReference� ��� I   ����
�� .rdwrwritnull���     ****� o    ���� 0 thetext theText� ����
�� 
refn� o    ���� $0 thefilereference theFileReference� �����
�� 
as  � m    ��
�� 
utf8��  � ���� I   �����
�� .rdwrclosnull���     ****� o    ���� $0 thefilereference theFileReference��  ��  ��       �������������������  � �������������������������� *0 omnifocus_task_list OmniFocus_task_list�� 0 
write_file 
write_File
�� .aevtoappnull  �   � ****�� 0 currdate CurrDate�� 0 currdatetxt CurrDatetxt�� 0 enddate endDate�� 0 
enddatetxt 
endDatetxt�� 0 dateyeartxt dateYeartxt�� 0 datemonthtxt dateMonthtxt�� 0 
datedaytxt 
dateDaytxt�� 0 thefilepath theFilePath�� 0 	due_tasks 	due_Tasks� �� ����������� *0 omnifocus_task_list OmniFocus_task_list��  ��  � 
���������������������� 0 currdatetxt CurrDatetxt��  0 refduetasklist refDueTaskList�� 0 lstname lstName�� 0 
lstcontext 
lstContext�� 0 
lstproject 
lstProject�� 0 strtext strText�� 0 itask iTask�� 0 strname strName�� 0 
varcontext 
varContext�� 0 
varproject 
varProject� ��������������������������������57����bp��
�� 
ldt 
�� .misccurdldt    ��� null
�� 
shdt
�� 
capp
�� kfrmID  
�� 
FCDo
�� 
FCft�  
�� 
FCfl
�� 
FCcd
�� 
FCDs
�� 
msng
�� 
pnam
�� 
FCct
�� 
FCPr
�� 
cobj
�� 
ret 
�� .corecnte****       ****��*�*j �,E/�,E�O)���0*�, �*�-�[[[�,\Ze8\[�,\Zf8A\[[�,\Z*j <\[�,\Z�8BA1E�O�[�,\[�,�,\[�,�,\ZmvE[a k/E�Z[a l/E�Z[a m/E�ZOa �%a %_ %_ %E�O �k�j kh �a �/�a �/�a �/mvE[a k/E�Z[a l/E�Z[a m/E�ZO�a %�%E�O�� �a %�%E�Y hO�� �a %�%a %E�Y hO�_ %E�[OY��OPUUO�� ������������� 0 
write_file 
write_File�� ����� �  ������ 0 thefilepath theFilePath�� 0 	due_tasks 	due_Tasks��  � ���������� 0 thefilepath theFilePath�� 0 	due_tasks 	due_Tasks�� 0 thetext theText�� $0 thefilereference theFileReference� ����������������
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� 
as  
�� 
utf8�� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� �E�O��el E�O����� O�j � �����������
�� .aevtoappnull  �   � ****� k     ���  ��  ��  )��  4��  @��  J��  T��  `��  o��  ~��  �����  ��  ��  �  � ������������~�}�|�{�z�y�x�w�v�u�t k z�s � � � ��r�q�p�o�n��m
�� 
ldt 
�� .misccurdldt    ��� null
�� 
shdt�� 0 currdate CurrDate�� 0 currdatetxt CurrDatetxt� 
�~ 
days�} 0 enddate endDate�| 0 
enddatetxt 
endDatetxt
�{ 
year
�z 
long�y 0 dateyeartxt dateYeartxt
�x 
mnth�w 0 datemonthtxt dateMonthtxt
�v 
day �u 0 
datedaytxt 
dateDaytxt�t 

�s 
dfnm
�r .sysonwflfile    ��� null�q 0 thefilepath theFilePath�p *0 omnifocus_task_list OmniFocus_task_list�o 0 	due_tasks 	due_Tasks�n  � �l�k�j
�l 
errn�k���j  �m 0 
write_file 
write_File�� �*�*j �,E/E�O*�*j �,E/�,E�O*j �� E�O*���,E/E�O*j �,�&E�O*j �,�&E�O*j �,�&E�O�a  a �%E�Y hO�a  a �%E�Y hO 2*a a �%a %�%a %�%a %l E` O)j+ E` OPW X  hOPO)_ _ l+ � ldt     �Ļ�� ���  1 0 / 0 7 / 2 0 1 5� ldt     ���� ldt     ��� ���� ���  0 7�� 
� 2furlfile:///Users/matthewspear/Desktop/Test%20File� ���	� T o   D o   L i s t   f o r   1 0 / 0 7 / 2 0 1 5 :  %�   D o g   o n   a   l o g   i P h o n e   a p p   @ M a c   ( I d e a   D e v e l o p m e n t ) %�   L o g   P a i n t   s p l a s h   g a m e   @ M a c   ( I d e a   D e v e l o p m e n t ) %�   C o m p l e t e   -   X c o d e   6   :   C r e a t e   i O S   S e t t i n g s   p a g e   u s i n g   U I T a b l e V i e w     @ M a c   ( A p p   D e v e l o p m e n t ) %�   R e s t a r t   D e s i g n   +   C o d e   @ M a c   ( A p p   D e v e l o p m e n t ) %�   @ l u c a s j g o r d o n :   A w e s o m e   t h a t ' s   g r e a t   t o   h e a r !   A r e   t h e r e   a n y   t o o l s   t h a t   w e r e   m i s s i n g   t h a t   c o u l d   b e   u s e f u l ?   @ M a c   ( A p p   D e v e l o p m e n t ) %�   W h a t ' s   N e w   i n   S w i f t   2 . 0   -   T r e e h o u s e   @ M a c   ( A p p   D e v e l o p m e n t ) %�   S w i f t   P r o t o c o l s   C o u r s e   @ M a c   ( A p p   D e v e l o p m e n t ) %�   B u i l d i n g   F u n c t i o n a l   A p p s   |   V i d e o   @ M a c   ( A p p   D e v e l o p m e n t ) %�   W W D C   2 0 1 5   S w i f t   P a n e l   D i s c u s s i o n   |   W a t c h   @ M a c   ( A p p   D e v e l o p m e n t ) %�   C r e a t e   W e l c o m e   E m a i l   f o r   B e t a   T e s t e r s   @ M a c   ( C o u n t i n '   A p p ) %�   B u i l d   a p p   l a n d i n g   p a g e   @ M a c   ( C o u n t i n '   A p p ) %�   F i n d   S k e t c h   S c r e e n c a s t   s i t e   a n d   S u b s c r i b e   @ M a c   ( S k e t c h ) %�   D o   a   f o o d   a u d i t   @ H o m e   ( F i t n e s s   a n d   H e a l t h ) %�   U p d a t e   B u d g e t   @ M a c   ( M o n e y ) %�   R e s e a r c h :   B u y   a   w a l l e t   @ M a c   ( M o n e y ) %�   C h e c k   p h o n e   b a l a n c e   @ i P h o n e   ( M o n e y ) %�   T i d y   r o o m   @ H o m e   ( C h o r e s ) %�   H o o v e r   R o o m   @ H o m e   ( C h o r e s ) %�   D o   L a u n d r y   @ H o m e   ( C h o r e s ) %�   C l e a n   o u t   m y   c u p b o a r d   @ H o m e   ( C h o r e s ) %�   I n v e n t o r y X   +   C l e a n M y M a c   +   O n y X   @ M a c   ( C h o r e s ) %�   P r o c e s s   F o r t i f i y   -   R e a l   c o n n e c t i o n s   @ M a c   ( P e r s o n a l   D e v e l o p m e n t ) %�   P u t   u p   r e s t   o f   p o s t e r s   @ H o m e   ( - - - ) %�   R e - d e s i g n   r o o m   @ H o m e   ( - - - ) ascr  ��ޭ