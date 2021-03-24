class AllFreewrites extends React.Component {
  render() {
    var freewrites = this.props.freewrites.map(freewrite => {
      return (
        <div key={freewrite.id}>
          <Freewrite
            freewrite={freewrite}
            freewrite_title={freewrite.title}
            freewrite_text={freewrite.description}
            handleDelete={this.props.handleDelete}
            handleUpdate={this.props.handleUpdate}
            />
        </div>
      );
    });


    return <div>{freewrites}</div>;
  }
}
