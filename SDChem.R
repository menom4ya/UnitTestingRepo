#function computing SD for values of a given chemical each year

#Args
#dat    data frame like what we down loaded; columns Chemicalname, datameasurement,dateyear
#chemical identify which chemical I want to work with
#
#Output 
#Want to get the SD of chemical per year; data frame Chemical.Name, SD, Year
#

SDChem <-function(dat, chemical)
{
  #chemical = chrom, arsenic, mercury or...
  DatChem <-dat[dat$ChemicalName==chemical,]#Throwin out
  ANS <-aggregate(Data~Year,data=DatChem, FUN=sd, na.rm=TRUE)#SD yearly
  names(ANS)[2]<-"StandardDeviation"
  return(ANS)
  
}

#
