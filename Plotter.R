#Plotter function for visual of data analysis

#Args
#MeansbyYear output of AVChem
#SDbyYear output of SDChem
#
#
#Output 
#Plot chemical per year mean line with error bars
#
PlotChem <-function(MeanByYear, SDByYear)
{
  #chemical = chrom, arsenic, mercury or...
  #Plotdat <-MeansByYear[MeanByYear$ChemicalName==chemical, SDByYear$ChemicalName==chemical]
  Mdat <-merge(MeanByYear,SDByYear)
  plot(Mean~Year, data=Mdat,xlab="",ylab="",ylim=range(Mdat$Mean-Mdat$StandardDeviation,Mdat$Mean+Mdat$StandardDeviation, na.rm = TRUE))
    lines(Mdat$Year,Mdat$Mean-Mdat$StandardDeviation)
    lines(Mdat$Year,Mdat$Mean+Mdat$StandardDeviation)
  
}

#this originally works.
#plot(as.numeric(as.character(SD))~Year, data=SD[SD$Chemical.Name=="Chromium",])