class Urlstatus < Formula
  desc "URL Status Checker"
  homepage "https://github.com/ericem/two-pow-five/tree/master/urlstatus"
  url "https://github.com/ericem/two-pow-five/raw/master/urlstatus/release/urlstatus-0.1.0.tar.gz"
  sha256 "f477e93fb3d063a38e5c8e7fc9ff75825286ab4be3fbad417c1ec616857199eb"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/urlstatus/release/"
    cellar :any
    sha256 "5e66564dc0fe8f062dd1a527072c19d3bf9263d91cff450976b941eff20eb84c" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "libevent"

  def install
    mkdir bin
    system "make", "PREFIX=#{prefix}", "install"
  end

end
