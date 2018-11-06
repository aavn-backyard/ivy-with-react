"use strict";

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var ProductList = function (_React$Component) {
	_inherits(ProductList, _React$Component);

	function ProductList(props) {
		_classCallCheck(this, ProductList);

		var _this = _possibleConstructorReturn(this, (ProductList.__proto__ || Object.getPrototypeOf(ProductList)).call(this, props));

		_this.state = {
			products: []
		};

		_this.handleProductUpVote = function (productId) {
			console.log("product " + productId + " was up vote");
			var nextProducts = _this.state.products.map(function (product) {
				if (product.id === productId) {
					return Object.assign({}, product, {
						votes: product.votes + 1
					});
				} else {
					return product;
				}
			});

			_this.setState({ products: nextProducts });
		};

		_this.state = {
			products: []
		};
		_this.handleProductUpVote = _this.handleProductUpVote.bind(_this);
		return _this;
	}

	_createClass(ProductList, [{
		key: "componentDidMount",
		value: function componentDidMount() {

			this.setState({ products: Seed.products });
		}
	}, {
		key: "render",
		value: function render() {
			var _this2 = this;

			var products = this.state.products.sort(function (a, b) {
				return b.votes - a.votes;
			});
			var productComponents = products.map(function (product) {
				return React.createElement(Product, {
					key: 'product-' + product.id,
					id: product.id,
					title: product.title,
					description: product.description,
					url: product.url,
					votes: product.votes,
					submitterAvatarUrl: product.submitterAvatarUrl,
					productImageUrl: product.productImageUrl,
					onVote: _this2.handleProductUpVote
				});
			});
			return React.createElement(
				"div",
				{ className: "ui unstackable items" },
				productComponents
			);
		}
	}]);

	return ProductList;
}(React.Component);

var Product = function (_React$Component2) {
	_inherits(Product, _React$Component2);

	function Product() {
		var _ref;

		var _temp, _this3, _ret;

		_classCallCheck(this, Product);

		for (var _len = arguments.length, args = Array(_len), _key = 0; _key < _len; _key++) {
			args[_key] = arguments[_key];
		}

		return _ret = (_temp = (_this3 = _possibleConstructorReturn(this, (_ref = Product.__proto__ || Object.getPrototypeOf(Product)).call.apply(_ref, [this].concat(args))), _this3), _this3.handleUpVote = function () {
			_this3.props.onVote(_this3.props.id);
		}, _temp), _possibleConstructorReturn(_this3, _ret);
	}

	_createClass(Product, [{
		key: "render",
		value: function render() {
			return React.createElement(
				"div",
				{ className: "item" },
				React.createElement(
					"div",
					{ className: "image" },
					React.createElement("img", { src: this.props.productImageUrl })
				),
				React.createElement(
					"div",
					{ className: "middle aligned content" },
					React.createElement(
						"div",
						{ className: "header" },
						React.createElement(
							"a",
							{ onClick: this.handleUpVote },
							React.createElement("i", { className: "large caret up icon" })
						),
						this.props.votes
					),
					React.createElement(
						"div",
						{ className: "description" },
						React.createElement(
							"a",
							{ href: this.props.votes },
							this.props.title
						),
						React.createElement(
							"p",
							null,
							this.props.description
						)
					),
					React.createElement(
						"div",
						{ className: "extra" },
						React.createElement(
							"span",
							null,
							" Submmitted by: "
						),
						React.createElement("img", { className: "ui avatar image", src: this.props.submitterAvatarUrl
						})
					)
				)
			);
		}
	}]);

	return Product;
}(React.Component);

ReactDOM.render(React.createElement(ProductList, null), document.getElementById('content'));