// Extensions on Date

extension Date {

    private func formatterWith(style: DateFormatter.Style) -> DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = style
        return dateFormatter
    }

    var shortStyle: String {
        let shortFormatter = formatterWith(style: .short)
        return shortFormatter.string(from: self)
    }

    var mediumStyle: String {
        let mediumFormatter = formatterWith(style: .medium)
        return mediumFormatter.string(from: self)
    }

    var longStyle: String {
        let longFormatter = formatterWith(style: .long)
        return longFormatter.string(from: self)
    }

    static func dateFromISO8601(_ string: String?) -> Date? {
        guard let string = string else { return nil }
        let dateFormatter = ISO8601DateFormatter()
        return dateFormatter.date(from: string)
    }

}
