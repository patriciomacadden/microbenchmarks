# microbenchmarks

Benchmarking microframeworks.

## Benchmarked microframeworks (in alfabetic order)

* [cuba](https://github.com/soveran/cuba)
* [hobbit](https://github.com/patriciomacadden/hobbit)
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
    <td>1202.97 [#/sec] (mean)</td>
    <td>41.564 [ms] (mean)</td>
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
    <td>1233.78 [#/sec] (mean)</td>
    <td>40.526 [ms] (mean)</td>
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
    <td>1191.62 [#/sec] (mean)</td>
    <td>83.920 [ms] (mean)</td>
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
    <td>1200.07 [#/sec] (mean)</td>
    <td>83.328 [ms] (mean)</td>
  </tr>
  <tr>
    <td>Sinatra</td>
    <td>960.74 [#/sec] (mean)</td>
    <td>104.086 [ms] (mean)</td>
  </tr>
</table>
