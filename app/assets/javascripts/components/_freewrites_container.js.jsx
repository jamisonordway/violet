class FreewritesContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      freewrites: []
    };
    this.handleFormSubmit = this.handleFormSubmit.bind(this);
    this.addNewFreewrite = this.addNewFreewrite.bind(this);
    this.handleDelete = this.handleDelete.bind(this);
    this.handleUpdate = this.handleUpdate.bind(this);
    this.updateFreewrite = this.updateFreewrite.bind(this);
  }

  handleFormSubmit(title, text) {
    let body = JSON.stringify({
      freewrite: { title: title, text: text }
    });

    fetch("http://localhost:3000/api/v1/freewrites", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: body
    })
      .then(response => {
        return response.json();
      })
      .then(freewrite => {
        this.addNewFreewrite(freewrite);
      });
  }

  addNewFreewrite(freewrite) {
    this.setState({
      freewrites: this.state.freewrites.concat(freewrite)
    });
  }

  handleDelete(id) {
    fetch(`http://localhost:3000/api/v1/freewrites/${id}`, {
      method: "DELETE",
      headers: {
        "Content-Type": "application/json"
      }
    }).then(response => {
      this.deleteFreewrite(id);
    });
  }

  deleteFreewrite(id) {
    newFreewrites = this.state.freewrites.filter(freewrite => freewrite.id !== id);
    this.setState({
      freewrites: newFreewrites
    });
  }

  handleUpdate(freewrite) {
    fetch(`http://localhost:3000/api/v1/freewrites/${freewrite.id}`, {
      method: "PUT",
      body: JSON.stringify({ freewrite: freewrite }),
      headers: {
        "Content-Type": "application/json"
      }
    }).then(response => {
      this.updateFreewrite(freewrite);
    });
  }

  updateFreewrite(freewrite) {
    let newFreewrites = this.state.freewrites.filter(f => f.id !== freewrite.id);
    newFreewrites.push(freewrite);
    this.setState({
      freewrite: freewrite
    });
  }

  componentDidMount() {
    fetch("/api/v1/freewrites.json")
      .then(response => {
        return response.json();
      })
      .then(data => {
        this.setState({ freewrites: data });
      });
    }
  render() {
    return (
      <div>
        <h2>All Entries</h2>
        <AllFreewrites
          freewrites={this.props.freewrites}
          handleDelete={this.handleDelete}
          handleUpdate={this.handleUpdate}
        />
      </div>
    );
  }
}
