class ProductDashboard extends React.Component {
  	constructor(props) {
    	super(props);
      	this.state = {
			products: [],
		};
  		this.handleSubmit = this.handleSubmit.bind(this);
    	this.handleSubmitCallback = this.handleSubmitCallback.bind(this);
      	this.handleProductUpVote = this.handleProductUpVote.bind(this);
  	}
  	state ={
		products:[]
	}
	componentDidMount() {
		this.setState({products: Seed.products});
	}
  	handleSubmit(){
      const productParam = this.state.products.map((item)=> {
          return  {
                id: item.id,
                title: item.title,
                description: item.description,
                url: item.url,
                votes: item.votes
              };
      });
      var param = JSON.stringify(productParam);
      	logic.submit( {"products": param}, this.handleSubmitCallback);
 	}
  	handleSubmitCallback(returnData){
      alert("Total Votes is: " + returnData.totalVote);
    }
	handleProductUpVote = (productId) => {
		console.log("product " + productId +" was up vote");
		const nextProducts = this.state.products.map((product) => {
				if(product.id === productId){
					return Object.assign({}, product,{
						votes : product.votes + 1,
					});
				} else {
					return product;
				}
		});

		this.setState({products : nextProducts});
	}
	render () {
      const products = this.state.products;
    	return (
          <div className='dashboard'>
        	<ProductList products={products} handleProductUpVote={this.handleProductUpVote} />
            <button onClick={this.handleSubmit} className="btn-small btn-6 btn-6c">
              Submit</button>
            
          </div>
        );
    }
}
class ProductList extends React.Component {
	constructor(props) {
		super(props);
		this.handleProductUpVote = this.handleProductUpVote.bind(this);
	}

	handleProductUpVote = (productId) => {
		console.log("product " + productId +" was up vote");
		this.props.handleProductUpVote(productId);
	}
	render(){
		const products = this.props.products.sort((a,b)=>(b.votes - a.votes));
		const productComponents = products.map((product)=> (
			
				<Product
					key={'product-' + product.id}
					id={product.id}
					title={product.title}
					description={product.description}
					url={product.url}
					votes={product.votes}
					submitterAvatarUrl={product.submitterAvatarUrl}
					productImageUrl={product.productImageUrl}
					onVote={this.handleProductUpVote}
				/>
			));
			return (
				<div className='ui unstackable items'>
					{productComponents}
				</div>
			);
	}
}

class Product extends React.Component {

	handleUpVote = () => {
		this.props.onVote(this.props.id);
	}

	render(){
		return (
			<div className='item'>
				<div className='image'>
					<img src={this.props.productImageUrl}/>
				</div> 
				<div className='middle aligned content'>
					<div className='header'>
						<a onClick={this.handleUpVote}>
							<i className="fa fa-arrow-up"></i>
						</a>
						{this.props.votes}
					</div>
					<div className='description'>
						<a href={this.props.votes}>
						{this.props.title}
						</a>
						<p> 
							{this.props.description}
						</p>
					</div>
					<div className='extra'>
						<span> Submmitted by: </span>
						<img className='ui avatar image' src={this.props.submitterAvatarUrl}
						/>
					</div>
				</div>
			</div>
		)
	}
}

ReactDOM.render(
	<ProductDashboard/>,
	document.getElementById('content')
);
