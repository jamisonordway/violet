const styles = {
  margin: "1em",
  padding: "1em",
  border: "1px solid #ddd"
};

const Statistics = props => {
  console.log(props)
  return (
    <div style={styles}>
      <center>
        <h3>Hello {props.email}! You have finished [number] songs!</h3>
        <p>Ipsum lorem you also have 4 freewriting sections to review.</p>
      </center>
    </div>
  );
};
