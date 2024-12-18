//
//  PDFReader.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import SwiftUI
import PDFKit

struct PDFReader: View {
    var pdfName: String

    var body: some View {
        PDFKitView(pdfName: pdfName)
            .navigationTitle("Red, White & Royal Blue")
            .navigationBarTitleDisplayMode(.inline)
            .accessibilityLabel("PDF reader for Red, White & Royal Blue")
            .accessibilityHint("Swipe to navigate through the pages.")
    }
}

struct PDFKitView: UIViewRepresentable {
    let pdfName: String

    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.autoScales = true

        if let path = Bundle.main.path(forResource: pdfName, ofType: "pdf") {
            if let document = PDFDocument(url: URL(fileURLWithPath: path)) {
                pdfView.document = document
                pdfView.accessibilityLabel = "\(pdfName) document"
                pdfView.accessibilityHint = "Use gestures to navigate through pages."
            }
        }
        return pdfView
    }

    func updateUIView(_ uiView: PDFView, context: Context) {
        
    }
}

#Preview {
    PDFReader(pdfName: "redpdf")
}

