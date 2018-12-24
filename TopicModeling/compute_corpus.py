from get_data import load_data
from manage_path import *
from compute_topic import *
import sys

def main():
    data = load_data('TRACE2014_jinming.pkl')
    Dc_v3 = compute_Dc_v3(data)
    compute_corpus(Dc_v3,'Dc_v3')
    compute_id2word(Dc_v3,'Dc_v3')

if __name__ == "__main__":
    main()