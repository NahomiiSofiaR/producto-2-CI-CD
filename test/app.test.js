const request = require('supertest');
const app = require('../app');
const { expect } = require('chai');

describe('GET /', function() {
  it('respond with json status ok', function(done) {
    request(app)
      .get('/')
      .expect('Content-Type', /json/)
      .expect(200)
      .end(function(err, res) {
        if (err) return done(err);
        expect(res.body).to.have.property('status', 'ok');
        done();
      });
  });
});
