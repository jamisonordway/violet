class AllFreewrites extends React.Component {
  render() {
    var freewrites = this.props.freewrites.map(freewrite => {
      return (
        <div key={freewrite.id}>
          <Freewrite
            freewrite={freewrite}
            handleDelete={this.props.handleDelete}
            handleUpdate={this.props.handleUpdate}
          />
        </div>
      );
    });

    return <div>{freewrites}</div>;
  }
}