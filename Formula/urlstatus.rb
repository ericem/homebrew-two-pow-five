class Urlstatus < Formula
  desc "URL Status Checker"
  homepage "https://github.com/ericem/two-pow-five/tree/master/urlstatus"
  url "https://github.com/ericem/two-pow-five/raw/master/urlstatus/urlstatus-0.1.0.tar.gz"
  sha256 "ead6557976d0cdcefbe33f9ecb32a3cb93ee8e326f720b36cd76178e90a208c7"

  bottle do
    cellar :any
    sha256 "f11bc55f088ae509802bf583076004f502a978077e80b211a18fd7908a190fac " => :mojave
  end

  depends_on "crystal" => :build
  depends_on "libevent"

  def install
    mkdir bin
    system "make", "release"
    cp "./urlstatus", bin
  end

end
