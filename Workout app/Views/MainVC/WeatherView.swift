import UIKit

class WeatherView: UIView {
    
    private let sunImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sunImage")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let weatherLabel: UILabel = {
        let label = UILabel()
        label.text = "Солнечно"
        label.textColor = .specialGray
        label.font = .robotoMedium18()
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.7
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let informationWeatherLabel: UILabel = {
        let label = UILabel()
        label.text = "Хорошая погода, чтобы позаниматься на улице"
        label.textColor = .specialGray
        label.font = .robotoMedium14()
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    private func setupView() {
        backgroundColor = .white
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        addShadowOnView()
        
        addSubview(sunImageView)
        addSubview(weatherLabel)
        addSubview(informationWeatherLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension WeatherView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            sunImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            sunImageView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            sunImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            sunImageView.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            weatherLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            weatherLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            weatherLabel.trailingAnchor.constraint(equalTo: sunImageView.leadingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            informationWeatherLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            informationWeatherLabel.topAnchor.constraint(equalTo: weatherLabel.bottomAnchor, constant: 10),
            informationWeatherLabel.trailingAnchor.constraint(equalTo: sunImageView.leadingAnchor, constant: -10),
            informationWeatherLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    }
}
