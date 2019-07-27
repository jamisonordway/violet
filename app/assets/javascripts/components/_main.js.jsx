const styles = {
  margin: "1em",
  padding: "1em",
  border: "1px solid #ddd"
};

const Main = props => {
  return (
    <div style={styles}>
      <center>
        <h1>Violet -- Freewriting sessions </h1>
      </center>
      <FreewritesContainer />
    </div>
  );
};