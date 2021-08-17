const styles = {
  margin: "1em",
  padding: "1em",
  border: "1px solid #ddd"
};

const Dashboard = props => {
  console.log(props);
  return (
    <div style={styles}>
      <center>
        <h1>Violet, your songwriting assistant</h1>
      </center>
      <Statistics
        email={props.user.email}
      />
    </div>
  );
};
