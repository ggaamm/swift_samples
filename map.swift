var body: some View {
        Map(coordinateRegion: $region, interactionModes: .all, annotationItems: [place]) {
            place -> MapMarker in
            print("place loc \(place.location)")
            return MapMarker(coordinate: place.location, tint: Color.secondary)
        }
    }
}

struct IdentifiablePlace: Identifiable {
    let id: UUID
    let location: CLLocationCoordinate2D
    
    init(id: UUID = UUID(), lat: Double, long: Double) {
        self.id = id
        self.location = CLLocationCoordinate2D(
            latitude: lat,
            longitude: long)
    }
    
    init(location: CLLocationCoordinate2D) {
        self.id = UUID()
        self.location = location
    }
}
