//
//  ContentView.swift
//  LACWE Understanding test
//
//  Created by Иван Гаврилов on 21.11.2024.
//

/*
Методы для работы с текстом (Text) в iOS с использованием SwiftUI:
1. .font() — задает стиль шрифта для текста:
   - .system(size:weight:design:) — настраиваемый шрифт:
     - size: размер текста.
     - weight: толщина шрифта (например, .bold, .thin, .regular).
     - design: стиль шрифта (например, .default, .monospaced, .serif).
   - .title, .title2, .title3 — заголовки различных уровней:
     - .title: крупный заголовок.
     - .title2: средний заголовок.
     - .title3: мелкий заголовок.
   - .headline — стиль шрифта для заголовков.
   - .body — стиль основного текста.
   - .callout — стиль для текста заметок или комментариев.
   - .subheadline — стиль для подзаголовков.
   - .footnote — стиль для сносок.
   - .caption, .caption2 — стили для мелких подписей.
   
2. .foregroundColor() — задает цвет текста.
   Пример: .foregroundColor(.red)

3. .multilineTextAlignment() — задает выравнивание для многострочного текста.
   Пример: .multilineTextAlignment(.center)

4. .lineLimit() — ограничивает количество строк текста.
   Пример: .lineLimit(2)

5. .truncationMode() — определяет, где будет обрезаться текст, если он не помещается:
   - .head: обрезка в начале строки.
   - .middle: обрезка в середине строки.
   - .tail: обрезка в конце строки.
   Пример: .truncationMode(.tail)

6. .lineSpacing() — задает расстояние между строками текста.
   Пример: .lineSpacing(5)

7. .kerning() — изменяет расстояние между символами.
   Пример: .kerning(2)

8. .tracking() — изменяет расстояние между символами в строке (похоже на kerning, но применяется ко всей строке).
   Пример: .tracking(1)

9. .baselineOffset() — смещает текст по вертикали относительно базовой линии.
   Пример: .baselineOffset(5)

10. .strikethrough() — добавляет линию через текст:
    - Пример: .strikethrough(true, color: .red)

11. .underline() — добавляет подчеркивание текста:
    - Пример: .underline(true, color: .blue)

12. .bold() — делает текст жирным.
    Пример: .bold()

13. .italic() — делает текст курсивным.
    Пример: .italic()

14. .fontWeight() — задает толщину шрифта (альтернатива weight в .font).
    Пример: .fontWeight(.light)

15. .shadow() — добавляет тень к тексту.
    Пример: .shadow(color: .gray, radius: 2, x: 1, y: 1)
*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(
                    .system(
                        size: 40,
                        weight: .bold,
                        design: .default
                        )
                    )
            Text("Hello, world!")
                .font(
                    .system(size: 40,
                            weight: .thin,
                            design: .default
                           
                           )
                )
            Text("Hello, world!")
                .font(.title2)
            Text("Hello, world!")
                .font(.title3)
            Text("Hello, world!")
                .font(.headline)
            
            Spacer()
            
            Text("Hello, world!")
                .font(.body)
            Text("Hello, world!")
                .font(.callout)
            Text("Hello, world!")
                .font(.subheadline)
            Text("Hello, world!")
                .font(.footnote)
            Text("Hello, world!")
                .font(.caption)
            Text("Hello, world!")
                .font(.caption2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
