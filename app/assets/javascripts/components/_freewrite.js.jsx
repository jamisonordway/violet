class Freewrite extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      editable: false
    };
    this.handleEdit = this.handleEdit.bind(this);
  }

  handleEdit() {
    if (this.state.editable) {
      let title = this.title.value;
      let text = this.text.value;
      let id = this.props.freewrite.id;
      let freewrite = { id: id, title: title, text: text };
      this.props.handleUpdate(freewrite);
    }
    this.setState({
      editable: !this.state.editable
    });
  }

  render() {
    let title = this.state.editable ? (
      <input
        type="text"
        ref={input => (this.title = input)}
        defaultValue={this.props.freewrite.freewrite_title}
      />
    ) : (
      <h3>{this.props.freewrite.freewrite_title}</h3>
    );
    let text = this.state.editable ? (
      <input
        type="text"
        ref={input => (this.text = input)}
        defaultValue={this.props.freewrite.freewrite_body}
      />
    ) : (
      <p>{this.props.freewrite.freewrite_body}</p>
    );
    return (
      <div
        style={{
          margin: "1em",
          padding: "1em",
          border: "1px solid #ddd"
        }}
      >
        {title}
        {text}
        <button onClick={() => this.handleEdit()}>
          {this.state.editable ? "Submit" : "Edit"}
        </button>
        {!this.state.editable && (
          <button
            onClick={() => this.props.handleDelete(this.props.freewrite.id)}
          >
            Delete
          </button>
        )}
      </div>
    );
  }
}