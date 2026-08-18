   # Final_project

 ## Modificari:
Pentru realizarea proiectului final am avut de afisat pe display ul de 8 digits temperatura si valoarea counterului.   
Pentru a putea face acest lucru am importat modulele temelor anterioare : I2C, UART Logger Interactiv si Counter binar.   
Am inceput prin adaugarea in modulul UART, modulul Multidecade pentru a putea prelucra valoarea de la counter pentru afisarea pe display intrucat acesta depinde de comanda primita de la butoane, prin urmare de debouncers si de valoarea counterului .   
Am modificat in modulul I2C, modulul de mux si cifra_sel pentru a afisa atat valoarea temperaturii, cat si a counterului , prin adaugarea unor cazuri de sel si modificarea dimensiunilor acestora.
Deoarece aveam la dispozitie doar 4 digits pentru afisarea valorii am modificat valoarea counterului de la 16 biti la 14 biti.     






