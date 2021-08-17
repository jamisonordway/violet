
class NewFreewrite extends React.Component {
  constructor(props) {
    super(props);
    this.handleFormSubmit = this.handleFormSubmit.bind(this);
  };

  handleFormSubmit(title, text) {
    let body = JSON.stringify({
      freewrite: { title: title, text: text }
    });
    let test1 = fetch("http://localhost:3000/api/v1/freewrites", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: body
    }).then(response => {
      return response.json();
    })
  }


  render() {
    let formFields = {};
    return (
      <form
        style={{
          margin: "1em",
          padding: "1em",
          border: "1px solid #ddd"
        }}
        onSubmit={e => {
          this.handleFormSubmit(formFields.title.value, formFields.text.value);
          e.target.reset();
          e.preventDefault();
        }}
      >
      <p>Freewriting is a great way to get all of your ideas out of your head for future refinement.</p>
      <p>Try to spend at least 10 minutes per day filling this log with stream-of-consciousness writing.</p>
        <input
          ref={input => (formFields.title = input)}
          placeholder="Enter the title"
        />
        <input
          ref={input => (formFields.text = input)}
          placeholder="Enter the text"
        />
        <button>Submit</button>
      </form>
    );
  }
};
