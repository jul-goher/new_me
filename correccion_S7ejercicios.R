View(proteins_167_161521)
proteins_167_161521 [which (proteins_167_161521$Strand == "+"), c("Strand", "Lenght")] -> positive
View (positive) 

proteins_167_161521 [which (proteins_167_161521$Strand == "-"), c("Strand", "Lenght")] -> negative
View (negative)

#Add the object to a anew file
write.csv (positive, file = "Resultados/positive_ecoliK12.pdf")
write.csv (negative, file = "Resultados/negative_ecoliK12.pdf")


#Aquí no va el original, sino el de la anotacion 
pdf ("Resultados/boxplotecoli.pdf")
boxplot (proteins_167_161521 $ Length)
dev.off ()
#ahora sí sale 

pdf("Resultados/boxplotecoli.pdf")
boxplot (proteins_167_161521 $ Stop)
dev.off ()

#ahora sí sale 

pdf("Resultados/boxplot2")
boxplot (proteins_167_161521$Start - proteins_167_161521$Stop)
dev.off

min (ecolianotacion$lenght)
mayor <- ecoliamptacion [ecolianotacion$lenght == max (ecolianotacion$length), "Protein.Name"]
pequeño <- ecoliamptacion [ecolianotacion$lenght == min (ecolianotacion$length), "Protein.Name"]

paste ("La proteina mayor es: ", mayor, "con un tamaño de ",  max(ecolianotacion$length), "aminoácidos")

#10 más grandes, 10 más pequeños
sort (ecoli_anotaciomn$lenght)[1:10]
sort (ecoli_anotacion$Lenght, decreasing =TRUE) [1:10]

dim (positive)[1] #lo puedo poner en una variable 
dim (negative) [1]

