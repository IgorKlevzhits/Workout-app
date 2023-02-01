import UIKit

class WorkoutTableViewCell: UITableViewCell {
    
    private let backgroundCellView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.backgroundColor = .specialBrown
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let worcoutBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialBackground
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let workoutImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .specialBackground
        imageView.image = UIImage(named: "imageCell")
        imageView.layer.cornerRadius = 20
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let workoutLabel: UILabel = {
        let label = UILabel()
        label.text = "Pull Ups"
        label.textColor = .specialBlack
        label.font = .robotoBold20()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let repsLabel: UILabel = {
        let label = UILabel()
        label.text = "Reps: 10"
        label.textColor = .specialBlack
        label.font = .robotoMedium18()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let setsLabel: UILabel = {
        let label = UILabel()
        label.text = "Sets: 2"
        label.textColor = .specialBlack
        label.font = .robotoMedium18()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let startButton: UIButton = {
        let button = UIButton(type: .system)
        button.configuration = .borderless()
        button.backgroundColor = .specialYellow
        button.layer.cornerRadius = 10
        button.configuration?.title = "START"
        button.configuration?.baseForegroundColor = .specialDarkGreen
        button.configuration?.attributedTitle?.font = .robotoBold16()
        button.configuration?.titleAlignment = .center
        button.addTarget(self, action: #selector(startButtonPressed), for: .touchUpInside)
        button.addShadowOnView()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var labelStackView = UIStackView()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .clear
        selectionStyle = .none
        
        addSubview(backgroundCellView)
        addSubview(worcoutBackgroundView)
        addSubview(workoutImageView)
        addSubview(workoutLabel)
        labelStackView = UIStackView(arrangedSubviews: [repsLabel, setsLabel],
                                     axis: .horizontal,
                                     spacing: 10)
//        addSubview(repsLabel)
//        addSubview(setsLabel)
        addSubview(labelStackView)
        contentView.addSubview(startButton)
    }
    
    @IBAction func startButtonPressed() {
        print("hello")
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            backgroundCellView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            backgroundCellView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            backgroundCellView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            backgroundCellView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            worcoutBackgroundView.topAnchor.constraint(equalTo: backgroundCellView.topAnchor, constant: 10),
            worcoutBackgroundView.leadingAnchor.constraint(equalTo: backgroundCellView.leadingAnchor, constant: 10),
            worcoutBackgroundView.widthAnchor.constraint(equalToConstant: 80),
            worcoutBackgroundView.bottomAnchor.constraint(equalTo: backgroundCellView.bottomAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            workoutImageView.topAnchor.constraint(equalTo: worcoutBackgroundView.topAnchor, constant: 5),
            workoutImageView.leadingAnchor.constraint(equalTo: worcoutBackgroundView.leadingAnchor, constant: 10),
            workoutImageView.trailingAnchor.constraint(equalTo: worcoutBackgroundView.trailingAnchor, constant: -10),
            workoutImageView.bottomAnchor.constraint(equalTo: worcoutBackgroundView.bottomAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            workoutLabel.topAnchor.constraint(equalTo: backgroundCellView.topAnchor, constant: 10),
            workoutLabel.leadingAnchor.constraint(equalTo: worcoutBackgroundView.trailingAnchor, constant: 10),
            workoutLabel.trailingAnchor.constraint(equalTo: backgroundCellView.trailingAnchor, constant: -10),
            workoutLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            labelStackView.topAnchor.constraint(equalTo: workoutLabel.bottomAnchor, constant: 5),
            labelStackView.leadingAnchor.constraint(equalTo: worcoutBackgroundView.trailingAnchor, constant: 10),
            labelStackView.heightAnchor.constraint(equalToConstant: 20)
        ])
        
//        NSLayoutConstraint.activate([
//            repsLabel.topAnchor.constraint(equalTo: workoutLabel.bottomAnchor, constant: 5),
//            repsLabel.leadingAnchor.constraint(equalTo: worcoutBackgroundView.trailingAnchor, constant: 10),
//            repsLabel.heightAnchor.constraint(equalToConstant: 18)
//        ])
//
//        NSLayoutConstraint.activate([
//            setsLabel.topAnchor.constraint(equalTo: workoutLabel.bottomAnchor, constant: 5),
//            setsLabel.leadingAnchor.constraint(equalTo: repsLabel.trailingAnchor, constant: 10),
//            setsLabel.heightAnchor.constraint(equalToConstant: 18)
//        ])
        
        
        
        NSLayoutConstraint.activate([
            startButton.topAnchor.constraint(equalTo: labelStackView.bottomAnchor, constant: 5),
            startButton.leadingAnchor.constraint(equalTo: worcoutBackgroundView.trailingAnchor, constant: 10),
            startButton.trailingAnchor.constraint(equalTo: backgroundCellView.trailingAnchor, constant: -10),
            startButton.bottomAnchor.constraint(equalTo: backgroundCellView.bottomAnchor, constant: -10)
        ])
    }
    
}
