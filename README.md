### darleq3: Diatom Assessment of River and Lake Ecological Quality

`darleq3` is an R package for the assessment of river and lake ecological status using diatom data obtained by light microscopy (LM) or Next Generation Sequencing (NGS). The package contains functions for importing data from Excel worksheets, calculating various water quality metrics, EQRs and Water Framework Directive quality classes:

* `darleq` import diatom data from an Excel file, calculate matrics, EQRs and WFD quality classes, and save results in Excel format
* `read_DARLEQ` import diatom data from an Excel file
* `save_DARLEQ` save metric and EQR results in an Excel file
* `calc_Metric` calculate various diatom water quality metrics
* `calc_EQR` calculate sample and site EQRs and WFD quality classes
* `calc_Metric_EQR` calculate EQRS, WFD quality classes and summary diagnostic measures for multiple metrics
* `runDARLEQ` run DARLEQ3 as an interactive shiny app in a web browser
