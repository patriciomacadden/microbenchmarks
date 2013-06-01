# microbenchmarks

Benchmarking microframeworks.

## Benchmarked microframeworks (in alfabetic order)

* [cuba](https://github.com/soveran/cuba)
* [hobbit](https://github.com/patriciomacadden/hobbit)
* [hobbit-routes](https://github.com/patriciomacadden/hobbit-routes)
(Hobbit with routes! (A proof of concept))
* [sinatra](https://github.com/sinatra/sinatra)

And of course, [rack](https://github.com/rack/rack) as the reference.

## Platform

* MacBook Air (Intel Core i5, 4GB RAM)
* Thin web server
* ab - Apache HTTP server benchmarking tool

## Running the applications

There is a `config.ru` file in each directory with an application. Simply run:

```bash
$ bundle install
$ bundle exec rackup
```

## Results

### 50 concurrent requests, 1_000 requests

```bash
$ ab -c 50 -n 1000 http://localhost:9292/
```

<table>
  <tr>
    <th>Microframework</th>
    <th>Request per second</th>
    <th>Time per request</th>
  </tr>
  <tr>
    <th>Rack</th>
    <th>1392.34 [#/sec] (mean)</th>
    <th>35.911 [ms] (mean)</th>
  </tr>
  <tr>
    <td>Cuba</td>
    <td>1155.57 [#/sec] (mean)</td>
    <td>43.269 [ms] (mean)</td>
  </tr>
  <tr>
    <td>Hobbit</td>
    <td>1376.90 [#/sec] (mean)</td>
    <td>36.314 [ms] (mean)</td>
  </tr>
  <tr>
    <td>Hobbit with routes</td>
    <td>1134.86 [#/sec] (mean)</td>
    <td>44.058 [ms] (mean)</td>
  </tr>
  <tr>
    <td>Sinatra</td>
    <td>782.92 [#/sec] (mean)</td>
    <td>63.864 [ms] (mean)</td>
  </tr>
</table>

### 50 concurrent requests, 10_000 requests

```bash
$ ab -c 50 -n 10000 http://localhost:9292/
```

<table>
  <tr>
    <th>Microframework</th>
    <th>Request per second</th>
    <th>Time per request</th>
  </tr>
  <tr>
    <th>Rack</th>
    <th>1508.23 [#/sec] (mean)</th>
    <th>33.151 [ms] (mean)</th>
  </tr>
  <tr>
    <td>Cuba</td>
    <td>1159.09 [#/sec] (mean)</td>
    <td>43.137 [ms] (mean)</td>
  </tr>
  <tr>
    <td>Hobbit</td>
    <td>1447.53 [#/sec] (mean)</td>
    <td>34.542 [ms] (mean)</td>
  </tr>
  <tr>
    <td>Hobbit with routes</td>
    <td>1326.35 [#/sec] (mean)</td>
    <td>37.697 [ms] (mean)</td>
  </tr>
  <tr>
    <td>Sinatra</td>
    <td>971.33 [#/sec] (mean)</td>
    <td>51.476 [ms] (mean)</td>
  </tr>
</table>

### 100 concurrent requests, 1_000 requests

```bash
$ ab -c 100 -n 1000 http://localhost:9292/
```

<table>
  <tr>
    <th>Microframework</th>
    <th>Request per second</th>
    <th>Time per request</th>
  </tr>
  <tr>
    <th>Rack</th>
    <th>1351.94 [#/sec] (mean)</th>
    <th>73.968 [ms] (mean)</th>
  </tr>
  <tr>
    <td>Cuba</td>
    <td>1130.31 [#/sec] (mean)</td>
    <td>88.472 [ms] (mean)</td>
  </tr>
  <tr>
    <td>Hobbit</td>
    <td>1325.77 [#/sec] (mean)</td>
    <td>75.428 [ms] (mean)</td>
  </tr>
  <tr>
    <td>Hobbit with routes</td>
    <td>1249.96 [#/sec] (mean)</td>
    <td>80.002 [ms] (mean)</td>
  </tr>
  <tr>
    <td>Sinatra</td>
    <td>895.68 [#/sec] (mean)</td>
    <td>111.648 [ms] (mean)</td>
  </tr>
</table>

### 100 concurrent requests, 10_000 requests

```bash
$ ab -c 100 -n 10000 http://localhost:9292/
```

<table>
  <tr>
    <th>Microframework</th>
    <th>Request per second</th>
    <th>Time per request</th>
  </tr>
  <tr>
    <th>Rack</th>
    <th>1491.28 [#/sec] (mean)</th>
    <th>67.056 [ms] (mean)</th>
  </tr>
  <tr>
    <td>Cuba</td>
    <td>1168.82 [#/sec] (mean)</td>
    <td>85.556 [ms] (mean)</td>
  </tr>
  <tr>
    <td>Hobbit</td>
    <td>1424.99 [#/sec] (mean)</td>
    <td>70.176 [ms] (mean)</td>
  </tr>
  <tr>
    <td>Hobbit with routes</td>
    <td>624.10 [#/sec] (mean)</td>
    <td>160.231 [ms] (mean)</td>
  </tr>
  <tr>
    <td>Sinatra</td>
    <td>960.74 [#/sec] (mean)</td>
    <td>104.086 [ms] (mean)</td>
  </tr>
</table>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

See the [LICENSE](https://github.com/patriciomacadden/microbenchmarks/blob/master/LICENSE).
