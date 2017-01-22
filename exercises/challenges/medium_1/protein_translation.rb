# given a string of "Codons", translate to the correct Protein based on tehe table below

# Codon               Protein
# AUG                 Methionine
# UUU, UUC            Phenylalanine
# UUA, UUG            Leucine
# UCU, UCC, UCA, UCG  Serine
# UAU, UAC            Tyrosine
# UGU, UGC            Cysteine
# UGG                 Tryptophan
# UAA, UAG, UGA       STOP

#input: String

# output: Protein (Translated string based on table above)

# Methods
#   - of_codon (Class Method)
#      - takes codon string, returns corresponding Protein
#   - of_rna (Class Method)
#      - takes string, splits into codons, returns array of corresponding Protein(s).
#        - once a "STOP" is reached, no further proteins are returned
#        - Invalid input (non-codon) should raise Invalid Codon Error



class InvalidCodonError < StandardError; end

class Translation

  TRANSLATOR = {
    'AUG' => 'Methionine',
    'UGG' => 'Tryptophan',
    'UUU' => 'Phenylalanine', 'UUC' => 'Phenylalanine',
    'UAU' => 'Tyrosine',      'UAC' => 'Tyrosine',
    'UGU' => 'Cysteine',      'UGC' => 'Cysteine',
    'UUA' => 'Leucine',       'UUG' => 'Leucine',
    'UCU' => 'Serine',        'UCC' => 'Serine',
    'UCA' => 'Serine',        'UCG' => 'Serine',
    'UAA' => 'STOP',          'UAG' => 'STOP',
    'UGA' => 'STOP'
  }.freeze

  def self.of_codon(codon)
    TRANSLATOR.fetch(codon) {raise InvalidCodonError}
  end

  def self.of_rna(strand)
    rna_list = []

    strand.chars.each_slice(3) do |codon|
      break if of_codon(codon.join) == "STOP"
      rna_list << of_codon(codon.join)
    end

    rna_list
  end
end

