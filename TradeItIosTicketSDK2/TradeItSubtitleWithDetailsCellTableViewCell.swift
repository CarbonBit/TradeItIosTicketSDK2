import UIKit

// TODO: If this is specific to displaying only quotes, it should have a less generic name
//       OR it should be subclassed to a more specific quote use case.
class TradeItSubtitleWithDetailsCellTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var subtitleDetailsLabel: UILabel!

    private var quoteProvider: TradeItQuoteProvider?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(quoteProvider: TradeItQuoteProvider?) {
        self.quoteProvider = quoteProvider

        self.titleLabel?.text = self.textLabel?.text
        self.textLabel?.text = nil

        if let quoteProvider = quoteProvider {
            self.subtitleLabel?.text = quoteProvider.getTimestampLabelText()
            self.detailsLabel?.text = quoteProvider.getLastPriceLabelText()
            self.subtitleDetailsLabel?.text = quoteProvider.getChangeLabelText()
            self.subtitleDetailsLabel.textColor = quoteProvider.getChangeLabelColor()
        } else {
            self.subtitleLabel?.text = TradeItPresenter.MISSING_DATA_PLACEHOLDER
            self.detailsLabel?.text = TradeItPresenter.MISSING_DATA_PLACEHOLDER
            self.subtitleDetailsLabel?.text = ""
        }
    }

}
