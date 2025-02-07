-- Normalization

/*
Normallaşdırılmamış DB-lərin əlamətləri:
	+ Cədvəl birdən artıq entity haqqında məlumat saxlayır
	+ Cədvəldə və ya DB-də təkrarlanan sütunlar var
	+ Sütunlar təkrarlanan informasiyaları saxlayır
*/

/*
1NF - Birinci Normal Forma
	1NF deyir ki, sütün və sətirlərimizin kəsişməsində
	olan informasiya atomar(bölünməz) olmalıdır

	Atomar olmayan informasiya
	____________________________________
   |        FullName        |   Age		|
   --------------------------------------
   | Zamanov Nadir Rasim	|    45		|
   --------------------------------------

   Atomar olan informasiya
	_____________________________________________________
   | LastName  | FirstName  | Patronymic   |   Age		|
   ------------------------------------------------------
   | Zamanov   |   Nadir    |   Rasim	   |    45		|
   ------------------------------------------------------
   1NF həmçinin deyir ki, cədvəllərdə təkrarlanan
   sütun və informasiyalar olmalı deyil

2NF - ikinci normal forma
   2NF ehtiva edir ki, Birinci Normal Forma artıq tətbiq edilib.
   Və açar olmayan sütünlar İlkin Açardan (Primary Key) asılı
   olmalıdır.
   Bu o deməkdir ki, bir cədvəl ancaq bir obyekti (entity) 
   təsvir etməlidir. Nə 2, nə 1.5 obyekti deyil, 
   yalnız və yalnız 1 obyekti)))

3NF - üçüncü normal forma
   3NF ehtiva edir ki, Birinci və İkinci Normal Formalar artıq tətbiq edilib.
   Və açar olmayan sütünlar yalnız və yalnız
   İlkin Açardan (Primary Key) asılı olmalıdır.


*/