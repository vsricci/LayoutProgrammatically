//
//  SchedulingView.swift
//  LayoutProgrammaticalliy
//
//  Created by Vinicius Ricci on 27/10/18.
//  Copyright © 2018 Vinicius Ricci. All rights reserved.
//

import UIKit

class SchedulingView: UIView {

    
    var namePatientLabel: UILabel = UILabel()
    var namePatientTextField: UITextField = UITextField()
    var credentialsLabel: UILabel = UILabel()
    var FatherStackView: UIStackView = UIStackView()
    var preferencesTextField: UITextField = UITextField()
    var dataSchedulingLabel: UILabel = UILabel()
    var contactLabel: UILabel = UILabel()
    var stackViewAllUIElementsDown: UIStackView = UIStackView()
    var stackViewScheduling : UIStackView = UIStackView()
    var scheduleAppointmentButton: UIButton = UIButton()
    var scheduleExameButton: UIButton = UIButton()
    var specialityTextField: UITextField = UITextField()
    var stateTextField : UITextField = UITextField()
    var cityTextField : UITextField = UITextField()
    var regionTextField: UITextField = UITextField()
    var periodLabel: UILabel = UILabel()
    var periodStackView : UIStackView = UIStackView()
    var morningButton: UIButton = UIButton()
    var afternoonButton : UIButton = UIButton()
    var nigthButton: UIButton = UIButton()
    var descriptionSchedulingLabel: UILabel = UILabel()
    var descriptionSchedulingTextView: UITextView = UITextView()
    var lineView: UIView = UIView()
    var takePictureLabel : UILabel = UILabel()
    var takePictureView: UIView = UIView()
    var takePictureButton: UIButton = UIButton()
    var schedulingButton: UIButton = UIButton()
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        configConsatraintNamePatientLabel()
        configConstrainstPatientTextField()
        configConstraintsPreferencesTextField()
        configConstraintsDataSchedulingLabel()
        configConstraintsContactLabel()
        configConstraintsStackViewUIElementsDown()
        configStackViewscheduling()
        configConstraintsScheduleAppointmentButton()
        configConstraintsScheduleExamButton()
        configConstraintSpecialityTextField()
        configConstraintStateTextField()
        configConstraintCityTextField()
        configConstraintRegionTextField()
        configConstraintPeriodLabel()
        configConstraintStackViewPeriod()
        configConstraintMorningButton()
        configConstraintAfternoonButton()
        configConstraintNightButton()
        configConstraintDescriptionSchedulingLabel()
        configConstraintDescriptionDetailsSchedulingTextView()
        configConstraintLineView()
        configConstraintTakePictureLabel()
        configConstraintTakePictureView()
        configConstraintSchedulingButton()
//        credentialsLabel.textColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
//        credentialsLabel.text = "Dados do paciente"
//        credentialsLabel.textAlignment = .left
//        self.addSubview(credentialsLabel)
//        credentialsLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        credentialsLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
//        credentialsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
//        credentialsLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        
    }
    
    
    func configConsatraintNamePatientLabel() {
        namePatientLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        namePatientLabel.text = "Dados do paciente"
        namePatientLabel.textAlignment = .left
        namePatientLabel.font = UIFont.boldSystemFont(ofSize: 14)
        self.addSubview(namePatientLabel)
        namePatientLabel.translatesAutoresizingMaskIntoConstraints = false
        
        namePatientLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true
        namePatientLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        namePatientLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
    }
    
    func configConstrainstPatientTextField() {
        namePatientTextField.text = "(Titlular)"
        //namePatientTextField.borderInactiveColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        namePatientTextField.placeholder = "Paciente*"
        namePatientTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        namePatientTextField.font = UIFont(name: "Roboto-Bold", size: 11)
       // namePatientTextField.notMaskSetFalse = "false"
        namePatientTextField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(namePatientTextField)
        namePatientTextField.topAnchor.constraint(equalTo: self.namePatientLabel.bottomAnchor, constant: 10).isActive = true
        namePatientTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        namePatientTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        namePatientTextField.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
    }
    
    func configConstraintsPreferencesTextField(){
        //preferencesTextField.borderInactiveColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        preferencesTextField.placeholder = "Preferência (credenciado)"
        preferencesTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        preferencesTextField.font = UIFont(name: "Roboto-Bold", size: 11)
        //preferencesTextField.notMaskSetFalse = "false"
        preferencesTextField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(preferencesTextField)
        preferencesTextField.topAnchor.constraint(equalTo: self.namePatientTextField.bottomAnchor, constant: 10).isActive = true
        preferencesTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        preferencesTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        preferencesTextField.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        
    }
    
    func configConstraintsDataSchedulingLabel(){
        dataSchedulingLabel.text = "Dados do agendamento"
        dataSchedulingLabel.textAlignment = .left
        dataSchedulingLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        dataSchedulingLabel.font = UIFont.boldSystemFont(ofSize: 14)
        dataSchedulingLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(dataSchedulingLabel)
        
        dataSchedulingLabel.topAnchor.constraint(equalTo: self.preferencesTextField.bottomAnchor, constant: 10).isActive = true
        dataSchedulingLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        dataSchedulingLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
    }
    
    func configConstraintsContactLabel(){
        contactLabel.text = "Motivo do contato*"
        contactLabel.textAlignment = .left
        contactLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        contactLabel.font = UIFont.systemFont(ofSize: 9)
        contactLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(contactLabel)
        contactLabel.topAnchor.constraint(equalTo: self.dataSchedulingLabel.bottomAnchor, constant: 20).isActive = true
        contactLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        contactLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
    }
    
    func configConstraintsStackViewUIElementsDown(){
        stackViewAllUIElementsDown.distribution = .fill
        stackViewAllUIElementsDown.alignment = .center
        stackViewAllUIElementsDown.axis = .vertical
        stackViewAllUIElementsDown.spacing = 8
        self.addSubview(stackViewAllUIElementsDown)
        stackViewAllUIElementsDown.translatesAutoresizingMaskIntoConstraints = false
        stackViewAllUIElementsDown.topAnchor.constraint(equalTo: self.contactLabel.bottomAnchor, constant: 16).isActive = true
        stackViewAllUIElementsDown.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        stackViewAllUIElementsDown.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
       // stackViewAllUIElementsDown.heightAnchor.constraint(equalToConstant: 400).isActive = true
        
    }
    
    func configStackViewscheduling() {
        
        stackViewScheduling.distribution = .fillEqually
        stackViewScheduling.spacing = 8.0
        stackViewScheduling.axis = .horizontal
        stackViewAllUIElementsDown.addArrangedSubview(stackViewScheduling)
        stackViewScheduling.translatesAutoresizingMaskIntoConstraints = false
        stackViewScheduling.topAnchor.constraint(equalTo: self.stackViewAllUIElementsDown.topAnchor, constant: 0).isActive = true
        //stackViewScheduling.leadingAnchor.constraint(equalTo: self.stackViewAllUIElementsDown.leadingAnchor, constant: 16).isActive = true
        //stackViewScheduling.trailingAnchor.constraint(equalTo: self.stackViewAllUIElementsDown.trailingAnchor, constant: -16).isActive = true
        stackViewScheduling.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        
    }
    
    func configConstraintsScheduleAppointmentButton() {
        scheduleAppointmentButton.setTitle("Agendar consulta", for: .normal)
        scheduleAppointmentButton.setImage(UIImage(named: "radio_button"), for: .normal)
        scheduleAppointmentButton.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 13)
        stackViewScheduling.addArrangedSubview(scheduleAppointmentButton)
        scheduleAppointmentButton.translatesAutoresizingMaskIntoConstraints = false
       // scheduleAppointmentButton.topAnchor.constraint(equalTo: self.stackViewScheduling.bottomAnchor, constant: 0).isActive = true
       // scheduleAppointmentButton.leadingAnchor.constraint(equalTo: self.stackViewScheduling.leadingAnchor, constant: 0).isActive = true
        //scheduleAppointmentButton.bottomAnchor.constraint(equalTo: self.stackViewScheduling.bottomAnchor, constant: 0).isActive = true
    }
    
    func configConstraintsScheduleExamButton() {
        scheduleExameButton.setTitle("Agendar Exame", for: .normal)
        scheduleExameButton.setImage(UIImage(named: "radio_button"), for: .normal)
        scheduleExameButton.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 13)
        stackViewScheduling.addArrangedSubview(scheduleExameButton)
        scheduleExameButton.translatesAutoresizingMaskIntoConstraints = false
        
       // scheduleExameButton.topAnchor.constraint(equalTo: self.stackViewScheduling.bottomAnchor, constant: 0).isActive = true
        //scheduleExameButton.trailingAnchor.constraint(equalTo: self.stackViewScheduling.trailingAnchor, constant: 0).isActive = true
       // scheduleExameButton.bottomAnchor.constraint(equalTo: self.stackViewScheduling.bottomAnchor, constant: 0).isActive = true
    }
    
    func configConstraintSpecialityTextField(){
        specialityTextField.text = "Selecione uma especialidade"
        //specialityTextField.borderInactiveColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        specialityTextField.placeholder = "Especialidade*"
        specialityTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        specialityTextField.font = UIFont(name: "Roboto-Bold", size: 11)
        //specialityTextField.notMaskSetFalse = "false"
        stackViewAllUIElementsDown.addArrangedSubview(specialityTextField)
        specialityTextField.translatesAutoresizingMaskIntoConstraints = false
        
        //specialityTextField.topAnchor.constraint(equalTo: self.stackViewScheduling.bottomAnchor, constant: 10).isActive = true
        specialityTextField.leadingAnchor.constraint(equalTo: stackViewAllUIElementsDown.leadingAnchor).isActive = true
        specialityTextField.trailingAnchor.constraint(equalTo: stackViewAllUIElementsDown.trailingAnchor).isActive = true
        specialityTextField.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
    }
    
    func configConstraintStateTextField(){
        stateTextField.text = "Selecione uma estado"
        //specialityTextField.borderInactiveColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        stateTextField.placeholder = "Estado*"
        stateTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        stateTextField.font = UIFont(name: "Roboto-Bold", size: 11)
        //specialityTextField.notMaskSetFalse = "false"
        stackViewAllUIElementsDown.addArrangedSubview(stateTextField)
        stateTextField.translatesAutoresizingMaskIntoConstraints = false
        
        //specialityTextField.topAnchor.constraint(equalTo: self.specialityTextField.bottomAnchor, constant: 10).isActive = true
        stateTextField.leadingAnchor.constraint(equalTo: stackViewAllUIElementsDown.leadingAnchor).isActive = true
        stateTextField.trailingAnchor.constraint(equalTo: stackViewAllUIElementsDown.trailingAnchor).isActive = true
        stateTextField.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
    }
    
    func configConstraintCityTextField(){
        cityTextField.text = "Selecione uma cidade"
        //specialityTextField.borderInactiveColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        cityTextField.placeholder = "Cidade*"
        cityTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        cityTextField.font = UIFont(name: "Roboto-Bold", size: 11)
        //specialityTextField.notMaskSetFalse = "false"
        stackViewAllUIElementsDown.addArrangedSubview(cityTextField)
        cityTextField.translatesAutoresizingMaskIntoConstraints = false
        
        //specialityTextField.topAnchor.constraint(equalTo: self.stackViewScheduling.bottomAnchor, constant: 10).isActive = true
        cityTextField.leadingAnchor.constraint(equalTo: stackViewAllUIElementsDown.leadingAnchor).isActive = true
        cityTextField.trailingAnchor.constraint(equalTo: stackViewAllUIElementsDown.trailingAnchor).isActive = true
        cityTextField.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
    }
    
    func configConstraintRegionTextField(){
        //regionTextField.text = "Selecione uma cidade"
        //specialityTextField.borderInactiveColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        regionTextField.placeholder = "Região / Zona*"
        regionTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        regionTextField.font = UIFont(name: "Roboto-Bold", size: 11)
        //specialityTextField.notMaskSetFalse = "false"
        stackViewAllUIElementsDown.addArrangedSubview(regionTextField)
        regionTextField.translatesAutoresizingMaskIntoConstraints = false
        
        //specialityTextField.topAnchor.constraint(equalTo: self.stackViewScheduling.bottomAnchor, constant: 10).isActive = true
        regionTextField.leadingAnchor.constraint(equalTo: stackViewAllUIElementsDown.leadingAnchor).isActive = true
        regionTextField.trailingAnchor.constraint(equalTo: stackViewAllUIElementsDown.trailingAnchor).isActive = true
        regionTextField.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
    }
    
    func configConstraintPeriodLabel(){
        periodLabel.text = "Período*"
        periodLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        periodLabel.textAlignment = .left
        stackViewAllUIElementsDown.addArrangedSubview(periodLabel)
        periodLabel.translatesAutoresizingMaskIntoConstraints = false
        periodLabel.leadingAnchor.constraint(equalTo: stackViewAllUIElementsDown.leadingAnchor).isActive = true
        periodLabel.trailingAnchor.constraint(equalTo: stackViewAllUIElementsDown.trailingAnchor).isActive = true
        //periodLabel.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
    }
    
    func configConstraintStackViewPeriod() {
        periodStackView.distribution = .fillEqually
        periodStackView.alignment = .center
        periodStackView.axis = .horizontal
        stackViewAllUIElementsDown.addArrangedSubview(periodStackView)
        periodStackView.translatesAutoresizingMaskIntoConstraints = false
        periodStackView.leadingAnchor.constraint(equalTo: stackViewAllUIElementsDown.leadingAnchor).isActive = true
        periodStackView.trailingAnchor.constraint(equalTo: stackViewAllUIElementsDown.trailingAnchor).isActive = true
        periodStackView.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
    }
    
    func configConstraintMorningButton() {
        morningButton.setTitle("Manhã", for: .normal)
        morningButton.setImage(UIImage(named: "radio_button"), for: .normal)
        morningButton.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 13)
        periodStackView.addArrangedSubview(morningButton)
        morningButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configConstraintAfternoonButton() {
        afternoonButton.setTitle("Tarde", for: .normal)
        afternoonButton.setImage(UIImage(named: "radio_button"), for: .normal)
        afternoonButton.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 13)
        periodStackView.addArrangedSubview(afternoonButton)
        afternoonButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configConstraintNightButton() {
        nigthButton.setTitle("Noite", for: .normal)
        nigthButton.setImage(UIImage(named: "radio_button"), for: .normal)
        nigthButton.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 13)
        periodStackView.addArrangedSubview(nigthButton)
        nigthButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configConstraintDescriptionSchedulingLabel() {
        descriptionSchedulingLabel.text = "Descrição do agendamento"
        descriptionSchedulingLabel.textAlignment = .left
        descriptionSchedulingLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        stackViewAllUIElementsDown.addArrangedSubview(descriptionSchedulingLabel)
        descriptionSchedulingLabel.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionSchedulingLabel.leadingAnchor.constraint(equalTo: stackViewAllUIElementsDown.leadingAnchor).isActive = true
       // descriptionSchedulingLabel.trailingAnchor.constraint(equalTo: stackViewAllUIElementsDown.trailingAnchor, constant: -16).isActive = true
    }
    
    func configConstraintDescriptionDetailsSchedulingTextView() {
        descriptionSchedulingTextView.text = "Insira os detalhes de sua solicitação."
        descriptionSchedulingTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        descriptionSchedulingTextView.layer.cornerRadius = 4
        descriptionSchedulingTextView.layer.borderWidth = 0.5
        descriptionSchedulingTextView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        descriptionSchedulingTextView.textAlignment = .left
        stackViewAllUIElementsDown.addArrangedSubview(descriptionSchedulingTextView)
        descriptionSchedulingTextView.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionSchedulingTextView.leadingAnchor.constraint(equalTo: stackViewAllUIElementsDown.leadingAnchor).isActive = true
       // descriptionSchedulingTextView.trailingAnchor.constraint(equalTo: stackViewAllUIElementsDown.trailingAnchor, constant: -16).isActive = true
            descriptionSchedulingTextView.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func configConstraintLineView() {
        lineView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.addSubview(lineView)
        lineView.translatesAutoresizingMaskIntoConstraints = false
        
        lineView.topAnchor.constraint(equalTo: self.stackViewAllUIElementsDown.bottomAnchor, constant: 16).isActive = true
        lineView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        lineView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    func configConstraintTakePictureLabel() {
        takePictureLabel.textAlignment = .left
        takePictureLabel.text = "Tire uma foto do pedido médico (se necessário)"
        takePictureLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.addSubview(takePictureLabel)
        takePictureLabel.translatesAutoresizingMaskIntoConstraints = false
        
        takePictureLabel.topAnchor.constraint(equalTo: self.lineView.bottomAnchor, constant: 16).isActive = true
        takePictureLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        takePictureLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        
    }
    
    func configConstraintTakePictureView() {
        takePictureView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        takePictureView.layer.cornerRadius = 4
        takePictureView.layer.borderWidth = 0.5
        takePictureView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.addSubview(takePictureView)
        takePictureView.translatesAutoresizingMaskIntoConstraints = false
        
        takePictureView.topAnchor.constraint(equalTo: self.takePictureLabel.bottomAnchor, constant: 16).isActive = true
        takePictureView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        takePictureView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        takePictureView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func configConstraintSchedulingButton() {
        schedulingButton.setTitle("Solicitar agendamento", for: .normal)
        schedulingButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        schedulingButton.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        self.addSubview(schedulingButton)
        schedulingButton.translatesAutoresizingMaskIntoConstraints = false
        
        schedulingButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        schedulingButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
        schedulingButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
        schedulingButton.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
