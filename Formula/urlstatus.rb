class Urlstatus < Formula
  desc "URL Status Checker"
  homepage "https://github.com/ericem/two-pow-five/tree/master/urlstatus"
  url "https://github.com/ericem/two-pow-five/raw/master/urlstatus/release/urlstatus-0.1.0.tar.gz"
  sha256 "a1a864533cad4da38b629f374e22408b9d3e608818e077e8d1a78b1a9c916b82"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/urlstatus/release"
    cellar :any
    sha256 "c6070bdc8f7cd64ebe6d0479b6174bf22b1431a1c2a15e4f195ca5d4713b4e11" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
