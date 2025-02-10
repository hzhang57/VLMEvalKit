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
                """ Mini-CPM RealWorlQA
                [{'role': 'user', 'content': [<PIL.Image.Image image mode=RGB size=1536x1152 at 0x7FC7C98C8A30>, "Question: Where is the water compared to the tater tots?\nOptions:\nA. The water is behind to the right of the tater tots.\nB. The water is in front to the right of the tater tots.\nC. The water is behind to the left of the tater tots.\n\nAnswer with the option's letter from the given choices directly."]}]
                """
                ##
                new_content = []
                for one in content:
                    if isinstance(one, str) and "Question: " in one:
                        one = re.sub(r'Question:.*?\n', '', one, flags=re.DOTALL)
                    new_content.append(one)
                item['content'] = new_content
            else:
                """ DeepSeek RealWorldQA
                [{'role': '<|User|>', 'content': '<image>\nQuestion: How many bars are here?\nOptions:\nA. There are two parallel bars in this photo.\nB. There are three bars in the photo. two are the same height and one is higher.\nC. There are two bars in this photo. one is high and one is low.\nPlease select the correct answer from the options above. \n', 'images': ['/home/zhangh4/LMUData/images/RealWorldQA/1.jpg']}, {'role': '<|Assistant|>', 'content': ''}]
                """
                item['content'] = re.sub(r'Question:.*?\n', '', item['content'], flags=re.DOTALL)

    return conversations


def main():
    # Unit Test
    ## RealWorldQA
    conversation = [{'role': '<|User|>', 'content': '<image>\nQuestion: How many sticks of wood are in the image?\nOptions:\nA. There are 6 sticks of wood.\nB. There are 3 sticks of wood.\nC. There is 1 stick of wood.\nPlease select the correct answer from the options above. \n', 'images': ['/home/zhangh4/LMUData/images/RealWorldQA/21.jpg']}, {'role': '<|Assistant|>', 'content': ''}]
    print("Unit Test")
    print("Before:\n{}".format(conversation))
    update_conversation = only_keep_option_RealWorldQA(conversation)
    print("After:\n{}".format(update_conversation))
    print("-"*10)

    conversation = [{'role': 'user', 'content': ["<PIL.Image.Image image mode=RGB size=1536x1152 at 0x7FC7C98C8A30>", "Question: Where is the water compared to the tater tots?\nOptions:\nA. The water is behind to the right of the tater tots.\nB. The water is in front to the right of the tater tots.\nC. The water is behind to the left of the tater tots.\n\nAnswer with the option's letter from the given choices directly."]}] 
    print("Unit Test")
    print("Before:\n{}".format(conversation))
    update_conversation = only_keep_option_RealWorldQA(conversation)
    print("After:\n{}".format(update_conversation))
    print("-"*10)

    ## Video-MME
    conversation = [{'role': '<|User|>', 'content': '<image>\n<image>\n<image>\n<image>\n<image>\n<image>\n<image>\n<image>\n\nThese are the frames of a video. Select the best answer to the following multiple-choice question based on the video. Respond with only the letter (A, B, C, or D) of the correct option.\nQuestion: On what date is the total eclipse supposed to occur in the video?\nA. August 1, 2008.\nB. July 22, 2009.\nC. June 29, 2024.\nD. April 8, 2024.\nAnswer: ', 'images': ['/home/zhangh4/LMUData/images/Video-MME/08km9Yqbt-A/frame-1-of-8.jpg', '/home/zhangh4/LMUData/images/Video-MME/08km9Yqbt-A/frame-2-of-8.jpg', '/home/zhangh4/LMUData/images/Video-MME/08km9Yqbt-A/frame-3-of-8.jpg', '/home/zhangh4/LMUData/images/Video-MME/08km9Yqbt-A/frame-4-of-8.jpg', '/home/zhangh4/LMUData/images/Video-MME/08km9Yqbt-A/frame-5-of-8.jpg', '/home/zhangh4/LMUData/images/Video-MME/08km9Yqbt-A/frame-6-of-8.jpg', '/home/zhangh4/LMUData/images/Video-MME/08km9Yqbt-A/frame-7-of-8.jpg', '/home/zhangh4/LMUData/images/Video-MME/08km9Yqbt-A/frame-8-of-8.jpg']}, {'role': '<|Assistant|>', 'content': ''}]

    print("Unit Test")
    print("Before:\n{}".format(conversation))
    update_conversation = only_keep_option_RealWorldQA(conversation)
    print("After:\n{}".format(update_conversation))
    print("-"*10)
    


if __name__ == main():


    main()
