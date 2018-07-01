import UIKit
import CoreML
import Vision

let compiledModelUrl = Bundle.main.url(forResource:"ApplesOranges", withExtension: "mlmodelc")
let model = try MLModel(contentsOf: compiledModelUrl!)
let vnModel = try VNCoreMLModel(for: model)

func classify(_ uiImage: UIImage) throws -> [String]? {
    let request = VNCoreMLRequest(model: vnModel)
    request.imageCropAndScaleOption = .centerCrop
    
    let ciImage = CIImage(image: uiImage)
    let handler = VNImageRequestHandler(ciImage: ciImage!)
    try handler.perform([request])
    
    return (request.results as? [VNClassificationObservation])?.map({"\($0.identifier):\($0.confidence)"})
}

let orangeImage = UIImage(named: "orange.jpg")

try classify(orangeImage!)

let appleImage = UIImage(named: "apples.jpg")

try classify(appleImage!)

let appleLogo = UIImage(named: "Apple-logo.jpg")
try classify(appleLogo!)
