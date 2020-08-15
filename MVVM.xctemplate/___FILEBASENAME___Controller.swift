//  ___FILEHEADER___

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___Delegate: AnyObject {
  
}

final class ___FILEBASENAMEASIDENTIFIER___<ViewModel: ___VARIABLE_productName:identifier___Protocol>: UIViewController {
  
  private var viewModel: ViewModel
  private let contentView: ___VARIABLE_productName:identifier___View
  private weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
  
  // MARK: - Init
  init(viewModel: ViewModel, delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?) {
    self.viewModel = viewModel
    self.delegate = delegate
    self.contentView = ___VARIABLE_productName:identifier___View.loadNib()
    
    super.init(nibName: nil, bundle: nil)
  }
  
  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - View Life Cycle
  override func loadView() {
      view = contentView
  }
  
  override func viewDidLoad() {
      super.viewDidLoad()

      setUpNavigation()
      setTransparentNavigation()
      bind()
  }
}

// MARK: - Private methods
extension ___FILEBASENAMEASIDENTIFIER___ {
  
    private func bind() {
        contentView.bindIn(viewModel: viewModel)
    }
}
