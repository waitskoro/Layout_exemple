import QtQuick 2.12
import QtMultimedia 5.12

Rectangle {
    radius: 5
    width: parent.width / 2
    height: parent.height / 2
    color: "grey"



//    Item {
//        width: parent.width
//        height: parent.height


//        Camera {
//            id: camera
//            digitalZoom:zoomSlider.value
//            imageProcessing.whiteBalanceMode: CameraImageProcessing.WhiteBalanceFlash

//            exposure {
//                exposureCompensation: -1.0
//                exposureMode: Camera.ExposurePortrait
//            }

//            flash.mode: Camera.FlashRedEyeReduction

//            imageCapture {
//                onImageCaptured: {
//                    photoPreview.source = preview  // Show the preview in an Image
//                }
//            }
//        }

//        VideoOutput {
//            source: camera
//            fillMode: VideoOutput.PreserveAspectCrop
//            width: parent.width
//            height: parent.height
//            focus : visible // to receive focus and capture key events when visible
//        }

//        Image {
//            id: photoPreview
//            width: parent.width
//            height: parent.height
//        }
//    }
}
