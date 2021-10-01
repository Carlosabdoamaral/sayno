//
//  GraphicsViewController.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 18/09/21.
//

import UIKit
import Charts

class GraphicsViewController: UIViewController, ChartViewDelegate {

    //var barChart = BarChartView()
    var lineChart = LineChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //barChart.delegate = self
        lineChart.delegate  = self
    }
    

    /*
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        barChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        barChart.center = view.center
        view.addSubview(barChart)
        
        var entries = [BarChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(BarChartDataEntry(x: Double(x), y: Double(x)))
        }
        let set = BarChartDataSet(entries: entries)
        
        set.colors = ChartColorTemplates.joyful()
        let data = BarChartData(dataSet: set)
        barChart.data = data
    }
     */
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        lineChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        lineChart.center = view.center
        view.addSubview(lineChart)
        
        var entries = [ChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }
        let set = LineChartDataSet(entries: entries)
        
        set.colors = ChartColorTemplates.pastel()
        let data = LineChartData(dataSet: set)
        lineChart.data = data
        
    }
    
    

}
