import React from 'react';
import PropTypes from 'prop-types';
import Freewrite from '../components/Freewrite';

class AllFreewrites extends React.Component {
  render() {
    var freewrites = this.props.freewrites.map(freewrite => {
      return (
        <div key={freewrite.id}>
          <Freewrite
            freewrite={freewrite}
            title={freewrite.title}
            text={freewrite.description}
            handleDelete={this.props.handleDelete}
            handleUpdate={this.props.handleUpdate}
            />
        </div>
      );
    });


    return <div>{freewrites}</div>;
  }
}

export default AllFreewrites;
