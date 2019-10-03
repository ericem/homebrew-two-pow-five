class Certgen < Formula
  desc "Certificate Generator"
  homepage "https://github.com/ericem/two-pow-five/tree/master/certgen"
  url "https://github.com/ericem/two-pow-five/raw/master/certgen/release/certgen-0.1.0.tar.gz"
  sha256 "28fa85ab81712bd074cb07f6c0a330b340e9523b8b244f8c822b9efcbf01e10f"


 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/certgen/release"
    cellar :any
    sha256 "0423b97c270d02c2ce16754b933cbab7784be0f6537dfc0409851b3f2bea8553" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl@1.1"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
