 /*/
Průměrný věk zákazníků.
 */
show columns from uzivatel;
SELECT 2019 - ROUND(AVG(EXTRACT(YEAR FROM narozeni))) as Průměrný_věk from uzivatel;

show columns from titul_autor;
 /*/
 Autoři s nejvíce kopiemi na prodejně.
 */
SELECT titul_autor.idautor,autor.jmeno,autor.prijmeni,autor.narozeni,autor.ulice,autor.popisne_c,autor.psc FROM signatura
JOIN titul_autor
ON titul_autor.idtitul = signatura.idtitul
JOIN autor
ON autor.idautor = titul_autor.idautor
GROUP BY titul_autor.idautor ORDER BY COUNT(idsignatura) DESC;
 /*/
 Autoři s nejvíce tituly.
 */
SELECT titul_autor.idautor,autor.jmeno,autor.prijmeni,autor.narozeni,autor.ulice,autor.popisne_c,autor.psc FROM titul_autor
JOIN autor
ON titul_autor.idautor = autor.idautor
GROUP BY idautor ORDER BY COUNT(*) DESC;

