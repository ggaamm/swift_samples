    
    // populate images to @Published from the Set
    func populateImages() async {
        for key in imageSet {
            let downloadToFileName =
            FileManager.default.urls(
                for: .documentDirectory,
                   in: .userDomainMask)[0]
                .appendingPathComponent( key )
            if  let uiIm = UIImage(contentsOfFile: downloadToFileName.path) {
                images.append(ImageItem(image: Image(uiImage: uiIm)))
            }
        }
        let imageItem = ImageItem(image: Image("gorker_portrait"))
        images.append(imageItem)
    }
