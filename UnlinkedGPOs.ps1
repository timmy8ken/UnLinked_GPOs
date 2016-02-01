import-module GroupPolicy

$what = Get-GPOReport -all -ReportType Xml


foreach ($gpo in $what) {

    [xml]$report = $gpo

    if (-not($report.DocumentElement.LinksTo)) {

        $report.DocumentElement.Name  

    }
    
}
