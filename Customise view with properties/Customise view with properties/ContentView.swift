//
//  ContentView.swift
//  Customise view with properties
//
//  Created by Иван Гаврилов on 21.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Отвечает за статистику
//        weeklyStatistics()
        
        Spacer()
        // Отвечает за дни и погоду
        ScrollView(.horizontal) { // Горизонтальный скроллинг
            HStack(alignment: .top, spacing: 20) { // Настройка стека
                ForEach(dayForecasts, id: \.day) { forecast in
                    DayForecast(day: forecast.day,
                                high: forecast.high,
                                low: forecast.low,
                                weather: forecast.weather)
                }
            }
            .padding()
        }
        Spacer()
    }
}

// Отвечает за модель данных
struct Forecast {
    let day: String
    let high: Int
    let low: Int
    let weather: String
}

// Отвечает за модель данных
let dayForecasts: [Forecast] = [
    Forecast(day: "Mon", high: 70, low: 50, weather: "sun"),
    Forecast(day: "Tue", high: 60, low: 40, weather: "rain"),
    Forecast(day: "Wed", high: 60, low: 40, weather: "cloud"),
    Forecast(day: "Thu", high: 60, low: 40, weather: "snow"),
    Forecast(day: "Fri", high: 65, low: 45, weather: "sun")
]


#Preview {
    ContentView()
}

// Отвечает за интерфейс данных
struct DayForecast: View {
    let day: String
    let high: Int
    let low: Int
    let weather: String
    
    var iconName: String {
        switch weather {
        case "rain":
            return "cloud.rain.fill"
        case "sun":
            return "sun.max.fill"
        case "snow":
            return "snowflake"
        default:
            return "cloud.fill"
        }
        
    }
    
    var iconColor: Color {
        switch weather {
        case "rain":
            return .blue
        case "sun":
            return .yellow
        case "snow":
            return .teal
        default:
            return .gray
        }
    }
    
    var body: some View {
        
        VStack {
            Text(day)
                .font(.largeTitle)
                .fontWeight(.regular)
            Text("High: \(high)")
                .font(.title3)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .frame(width: 30, height: 30)
                .font(
                    .system(size: 30,
                            weight: .bold,
                            design: .default)
                )
            Text("Low: \(low)")
                .font(.title3)
        }
        .padding()
    }
}


struct weeklyStatistics: View {
    
    var averageHigh: Int = 0
    var averageLow: Int = 0
    var countRain: Int = 0
    var countSun: Int = 0
    var countCloud: Int = 0
    var countSnow: Int = 0
    
    init() {
        
        var totalHigh = 0
        var totalLow = 0
        
        // Цикл обработки массива
        for forecast in dayForecasts {
            
            totalHigh += forecast.high
            totalLow += forecast.low
            
            switch forecast.weather {
            case "rain":
                countRain += 1
            case "sun":
                countSun += 1
            case "cloud":
                countCloud += 1
            case "snow":
                countSnow += 1
            default: break
                
            }
        }
        
        // Расчёт средних значений
        if !dayForecasts.isEmpty {
            averageHigh = totalHigh / dayForecasts.count
            averageLow = totalLow / dayForecasts.count
        }
    }
    
    
    var body: some View {
        
        Text("Week statistics")
            .font(.largeTitle)
            .fontWeight(.regular)
        VStack {
            
            
            Image(systemName: "cloud.sun.rain")
        }
        .padding()
        
    }
}
