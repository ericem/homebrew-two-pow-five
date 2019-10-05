class Ifstats < Formula
  desc "Interface Stats Heads-Up-Display"
  homepage "https://github.com/ericem/two-pow-five/tree/master/ifstats"
  url "https://github.com/ericem/two-pow-five/raw/master/ifstats/release/ifstats-0.1.0.tar.gz"
  sha256 "ee4d111a71d2bca0c6370a4cdb8c5159d710bb1237d46280ce1250cc074724d5"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/ifstats/release"
    cellar :any
    sha256 "cb476326544d717b98d6a7d45874d91bd03b8246942b71967db9eb7442164c28" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
