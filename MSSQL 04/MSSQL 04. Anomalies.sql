-- Anomalies
-- INSERT Anomalies
-- UPDATE Anomalies
-- DELETE Anomalies

/*

	Nisbi cədcəl ilkin açarın digər oyuqlar ilə olan bağlılığıbı təsfiredir.

	Anomal MB cədvəlində yerləşən elə vəziyyət adlanır ki, MB-də ziddiyətə gətirib çıxarır yaxud либо 
	MB-nin emalını əhəmiyyətli dərəcədə mürəkkəbləşdirir. Buna səbəb cədvəldə həddindən artıq çox sayda olan ikililəşmədir hansı ki, 
	Açarı olmayan atributlardan olan funksional aıslılıqların mövcud olmasından işə salınırкоторое.

	Əlavə-anomaliyalar yaranır o zaman ki, nə zaman məlumatı cədvələ yerləşdirmək mümkün deyil, o dolu omadığı sürəcdə, 
	Yaxud cədvəlin əlavə olunması cədvəlin əlavə olaraq baxınılmasını tələb edir.
	M: biz tələbələr olmayan MB Students-ə qrup haqqında olan məlumatı əlavə edə bilmərik.

	Modifikasiya-anomaliyaları özlərini onda göstərir ki, bir məlumatın dəyişdirilməsi bütün cədvəlin baxılmasına və cədvəlin bəzi qeydlərinin dəyişməsinə gətirib çıxaracaqdır. 
		M: əgər MB Students qrupunun adı dəyişmişdirsə, o zaman bizə qrupun adını bir dəfə dəyişmək kifayət etməz;
 Bu zaman biz bütün cədvələ baxmalıyıq və bu qrupun qarçəməza çıxtığı bütün qeydləri dəyişməliyik.


Simə-anomaliyaları — hərhansısa alayın cədvəldən silinməsi zamanı məlumat itə bilər hansının ki, 
	Silinən qeyd ilə birbaşa əlaqəsi yoxdur.
	M: əgər MB Students-dən qrupu silmək istəyiriksə, o zaman biz bu qrupun bqtqn tələbələri haqda olan məlumatı itirə bilərik;
 Və yaxud əksinə, əgər biz tələbəni silmək istəyiriksə, o zaman o qrupda yeganə tələbə olduğu aşkar olsa,
	O zaman  biz qrup haqda məlumatı itiririk.
*/
