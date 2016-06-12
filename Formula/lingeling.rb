class Lingeling < Formula
  desc "SAT solver"
  homepage "http://fmv.jku.at/lingeling/"
  url "http://fmv.jku.at/lingeling/lingeling-bal-2293bef-151109.tar.gz"
  sha256 "211be9debb67caef07829601b2ea059dbe120470bf33fba6ef79d248baf940a8"

  def install
    system "./configure.sh"
    system "make"
    bin.install "lingeling", "plingeling", "ilingeling", "treengeling"
  end

  test do
    system "lingeling", "--help"
  end
end
