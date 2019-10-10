class Pipeplot < Formula
  desc "URL Status Checker"
  homepage "https://github.com/ericem/two-pow-five/tree/master/pipeplot"
  url "https://github.com/ericem/two-pow-five/raw/master/pipeplot/release/pipeplot-0.1.0.tar.gz"
  sha256 "1193479f307690497d689db3b7be3d490781abe54f09d7e7a2b63e316e30c070"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/pipeplot/release"
    cellar :any
    sha256 "8ea4ccc8e85bb9571bb7d1bb43305acb48bf5cb5cb305ef8e4561f0079af7eab" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "libevent"
  depends_on "gnuplot"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
