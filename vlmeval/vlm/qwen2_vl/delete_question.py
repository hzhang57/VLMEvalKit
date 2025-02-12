import json
import re

def only_keep_option_RealWorldQA(conversations):
    ## Remove Query in Question and only keep options
    ## 
    # Convert the string representation of a list into an actual list
    # Remove the question part from 'content'
    find_question = False
    for item in conversations:
        if "content" in item: 
            content = item['content']
            ## check content is list or not
            if isinstance(content, list):
                ##
                """
                [{'role': 'user', 'content': [{'type': 'image', 'image': 'file:///home/hzhang57/LMUData/images/RealWorldQA/109.jpg', 'min_pixels': 1003520, 'max_pixels': 12845056}, {'type': 'text', 'text': 'Question: Is this a one way street?\nOptions:\nA. Yes\nB. No\nPlease select the correct answer from the options above.'}]}]
                """
                ##
                new_content = []
                for one in content:
                    if one['type'] == "text":
                        if  "Question: " in one['text']:
                            one['text'] = re.sub(r'Question:.*?\n', '', one['text'], flags=re.DOTALL)
                    new_content.append(one)
                item['content'] = new_content

    return conversations
