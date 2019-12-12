{
    "dataset_reader": {
        "type": "event2mind",
        "source_tokenizer": {
            "type": "word"
        },
        "target_tokenizer": {
            "type": "word"
        }
    },
    "train_data_path": "C:/Users/ACLIMBER/Desktop/Data/event2mind/train_sample.csv",
    "validation_data_path": "C:/Users/ACLIMBER/Desktop/Data/event2mind/dev_sample.csv",
    "test_data_path": "C:/Users/ACLIMBER/Desktop/Data/event2mind/test.csv",
    "evaluate_on_test": true,
    "model": {
        "type": "event2mind",
        "source_embedder": {
            "type": "basic",
            "token_embedders": {
              "tokens":{
                "type": "embedding",
                "pretrained_file": "https://s3-us-west-2.amazonaws.com/allennlp/datasets/glove/glove.6B.100d.txt.gz",
                "embedding_dim": 100,
                "trainable": false
              }
            }
        },
        "embedding_dropout": 0.1,
        "encoder": {
            "type": "gru",
            "input_size": 100,
            "hidden_size": 50,
            "bidirectional": true
        },
        "max_decoding_steps": 50,
        "beam_size": 10
    },
    "iterator": {
        "type": "basic"
    },
    "trainer": {
        "num_epochs": 10,
        "cuda_device": -1,
        "optimizer": {
            "type": "adam",
            "lr": 0.01
        }
    }
}