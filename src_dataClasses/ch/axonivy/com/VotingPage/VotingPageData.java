package ch.axonivy.com.VotingPage;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class VotingPageData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class VotingPageData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -8573613873630613106L;

  private java.util.List<ch.axonivy.react.Product> products;

  /**
   * Gets the field products.
   * @return the value of the field products; may be null.
   */
  public java.util.List<ch.axonivy.react.Product> getProducts()
  {
    return products;
  }

  /**
   * Sets the field products.
   * @param _products the new value of the field products.
   */
  public void setProducts(java.util.List<ch.axonivy.react.Product> _products)
  {
    products = _products;
  }

  private java.lang.Integer totalVote;

  /**
   * Gets the field totalVote.
   * @return the value of the field totalVote; may be null.
   */
  public java.lang.Integer getTotalVote()
  {
    return totalVote;
  }

  /**
   * Sets the field totalVote.
   * @param _totalVote the new value of the field totalVote.
   */
  public void setTotalVote(java.lang.Integer _totalVote)
  {
    totalVote = _totalVote;
  }

}
