#function computing average values for a given chemical for each year

#Args
#dat    data frame like what we down loaded; columns Chemicalname, datameasurement,date year
#chemical identify which chemical I want to work with
#
#Output 
#Want to get the averages of chemical per year; data frame Chemicalname, Year, meanvalue
#
#Arsenic
#Phenanthrene
#Mercury
#Manganese
#Chromium

AvChem <-function(dat, chemical)
{
  #chemical = chrom, arsenic, mercury or...
  DatChem <-dat[dat$ChemicalName==chemical,]#Throwin out
  ANS <-aggregate(Data~Year,data=DatChem, FUN=mean, na.rm=TRUE)#Mean yearly
  names(ANS)[2]<-"Mean"
  return(ANS)
  
}

